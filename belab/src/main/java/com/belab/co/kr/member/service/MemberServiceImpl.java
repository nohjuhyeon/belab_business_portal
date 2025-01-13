package com.belab.co.kr.member.service;

import com.belab.co.kr.member.dao.MemberMapper;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import jakarta.mail.internet.InternetAddress;  // jakarta.mail.internet로 수정
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Autowired
    private JavaMailSender mailSender; // 이메일 전송을 위한 JavaMailSender 주입

    private static final AtomicInteger userIdGenerator = new AtomicInteger(1); // ID 자동 증가

    @Override
    public boolean signup(MemberVO memberVO) {
        // 입력값 유효성 검증
        if (memberVO.getEmail() == null || memberVO.getEmail().isEmpty()) {
            throw new IllegalArgumentException("이메일은 필수 입력값입니다.");
        }

        if (memberVO.getPassword() == null || memberVO.getPassword().isEmpty()) {
            throw new IllegalArgumentException("비밀번호는 필수 입력값입니다.");
        }

        if (memberVO.getUsername() == null || memberVO.getUsername().isEmpty()) {
            throw new IllegalArgumentException("사용자 이름은 필수 입력값입니다.");
        }

        // 이메일 중복 체크
        MemberVO existingMember = memberMapper.findMemberByEmail(memberVO.getEmail());
        if (existingMember != null) {
            return false; // 중복된 이메일이 있을 경우 가입 실패
        }

        // 사용자 ID 설정 (자동 증가)
        memberVO.setUserId(userIdGenerator.getAndIncrement());

        // 회원가입 처리 (비밀번호 암호화 없이 평문 저장)
        memberMapper.insertMember(memberVO);
        return true; // 회원가입 성공
    }

    @Override
    public String findEmailByUsernameAndHp(String username, String hp) {
        // 이메일만 반환 (MemberVO가 아닌 String을 반환하도록 수정)
        return memberMapper.findEmailByUsernameAndHp(username, hp);
    }

    @Override
    public boolean updateMember(MemberVO memberVO) {
        // 입력값 검증
        if (memberVO == null || memberVO.getEmail() == null || memberVO.getEmail().isEmpty()) {
            throw new IllegalArgumentException("수정할 회원 정보가 유효하지 않습니다.");
        }

        int rowsAffected = memberMapper.updateMember(memberVO);
        return rowsAffected > 0; // 수정 성공 여부 반환
    }

    @Override
    public MemberVO login(MemberVO memberVO) {
        return memberMapper.loginMember(memberVO.getEmail(), memberVO.getPassword());
    }

    @Override
    public MemberVO findMemberByEmail(String email) {
        return memberMapper.findMemberByEmail(email);
    }

    @Override
    public boolean checkPassword(String email, String inputPassword) {
        // 이메일로 사용자 조회
        MemberVO member = memberMapper.findMemberByEmail(email);
        if (member != null && member.getPassword().equals(inputPassword)) {
            return true;  // 비밀번호가 일치하는 경우
        }
        return false;  // 비밀번호 불일치
    }

    @Override
    public void sendPasswordToEmail(String email, String newPassword) throws MessagingException {
        MimeMessage message = mailSender.createMimeMessage();
        message.setSubject("임시 비밀번호 발급 안내");

        // 이메일 본문 설정
        String content = "안녕하세요. 요청하신 임시 비밀번호는 다음과 같습니다:\n\n" + newPassword + "\n\n로그인 후 비밀번호를 변경해 주세요.";
        message.setText(content);

        // 발신자 주소 설정 (네이버 SMTP 인증된 주소)
        message.setFrom(new InternetAddress("kskj0760@naver.com")); // 발신자 이메일 설정

        // 수신자 설정
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(email));

        // 이메일 발송
        mailSender.send(message);
    }

    @Override
    public String generateTempPassword(String email) {
        // 이메일로 회원 조회
        MemberVO member = memberMapper.findMemberByEmail(email);
        if (member != null) {
            // 임시 비밀번호 생성
            String tempPassword = generateRandomPassword();
            // 임시 비밀번호를 데이터베이스에 저장
            memberMapper.updatePasswordByEmail(email, tempPassword);
            return tempPassword;
        }
        return null;  // 해당 이메일로 회원이 없으면 null 반환
    }
    @Override
    public boolean updatePasswordByEmail(String email, String newPassword) {
        int rowsAffected = memberMapper.updatePasswordByEmail(email, newPassword);
        return rowsAffected > 0;
    }

    private String generateRandomPassword() {
        int length = 8;
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder password = new StringBuilder();
        Random rand = new Random();

        for (int i = 0; i < length; i++) {
            password.append(characters.charAt(rand.nextInt(characters.length())));
        }

        return password.toString();
    }
}
