package com.belab.co.kr.admin.member.controller;

import com.belab.co.kr.admin.member.service.AdminService;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;

    // 관리자 메인 페이지
    @GetMapping("/intro")
    public String intro(HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 접근했습니다.");
            return "redirect:/member/login";
        }
        model.addAttribute("username", loggedInUser.getUsername());
        return "/admin/admin_intro";
    }

    @GetMapping("/memberList")
    public String memberList(HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 접근했습니다.");
            return "redirect:/member/login";
        }

        List<MemberVO> memberList = adminService.getAllUsersExceptLoggedIn(String.valueOf(loggedInUser.getUser_id()));

        if (memberList == null || memberList.isEmpty()) {
            model.addAttribute("error", "회원 목록이 없습니다.");
            logger.info("회원 목록이 비어 있습니다.");
        } else {
            logger.info("회원 목록 로드 완료: {}명", memberList.size());
        }
        model.addAttribute("memberList", memberList);
        return "/admin/member/member_list"; // JSP 파일 경로
    }


    // 회원 정보 수정 폼
    @GetMapping("/modifyForm")
    public String modifyForm(@RequestParam("user_id") String userId, HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 접근했습니다.");
            return "redirect:/member/login";
        }

        try {
            MemberVO member = adminService.getMemberById(userId);
            if (member == null) {
                logger.warn("회원 정보가 존재하지 않습니다. userId: {}", userId);
                model.addAttribute("error", "회원 정보를 찾을 수 없습니다.");
                return "redirect:/admin/memberList";
            }
            model.addAttribute("member", member); // 수정할 회원 정보 전달
        } catch (Exception e) {
            logger.error("회원 정보 조회 중 예외 발생: userId={}, error={}", userId, e.getMessage(), e);
            model.addAttribute("error", "회원 정보 조회 중 오류가 발생했습니다.");
            return "redirect:/admin/memberList";
        }
        return "/admin/member/modifyForm"; // 수정 폼 JSP
    }

    // 회원 정보 수정 처리
    @PostMapping("/modify")
    public String modify(@ModelAttribute MemberVO memberVO, HttpSession session, RedirectAttributes redirectAttributes) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 접근했습니다.");
            return "redirect:/member/login";
        }

        try {
            boolean isUpdated = adminService.updateMember(memberVO);
            if (isUpdated) {
                logger.info("회원 정보 수정 성공: userId={}", memberVO.getUser_id());
                redirectAttributes.addFlashAttribute("success", "회원 정보가 성공적으로 수정되었습니다.");
            } else {
                logger.error("회원 정보 수정 실패: userId={}", memberVO.getUser_id());
                redirectAttributes.addFlashAttribute("error", "회원 정보 수정에 실패했습니다.");
            }
        } catch (Exception e) {
            logger.error("회원 정보 수정 중 예외 발생: userId={}, error={}", memberVO.getUser_id(), e.getMessage(), e);
            redirectAttributes.addFlashAttribute("error", "회원 정보 수정 중 오류가 발생했습니다.");
        }
        return "redirect:/admin/memberList";
    }


    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public ResponseEntity<Map<String, String>> deleteMember(@RequestParam("user_id") String userId, HttpSession session, SessionStatus sessionStatus) {
        Map<String, String> response = new HashMap<>();

        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 접근했습니다.");
            response.put("status", "failure");
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);  // 로그인되지 않은 경우 응답
            }
        {

            // 회원 삭제 처리
            boolean isDeleted = adminService.deleteMemberById(userId);

            if (isDeleted) {
                // 세션 종료
                sessionStatus.setComplete();  // 세션 초기화

                response.put("status", "success");
                return ResponseEntity.ok(response);  // 성공 응답
            } else {
                response.put("status", "failure");
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);  // 실패 응답
            }
        }
    }

}
