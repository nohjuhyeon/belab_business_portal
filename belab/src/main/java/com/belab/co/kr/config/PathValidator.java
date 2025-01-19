package com.belab.co.kr.config;

import java.io.File;

public class PathValidator {

    /**
     * 경로를 정규화하고 유효성을 검사합니다.
     * @param inputPath 사용자 입력 경로
     * @return 정규화된 경로
     * @throws IllegalArgumentException 경로가 유효하지 않을 경우 예외
     */
    public static String normalizePath(String inputPath) {
        if (inputPath == null || inputPath.isEmpty()) {
            throw new IllegalArgumentException("경로가 비어 있거나 null입니다.");
        }

        // \\를 /로 변환하여 정규화
        String normalizedPath = inputPath.replace("\\", "/");

        // Windows 환경에서 다시 \\로 변경
        if (File.separator.equals("\\")) {
            normalizedPath = normalizedPath.replace("/", "\\");
        }

        // 유효한 경로인지 확인
        File file = new File(normalizedPath);
        if (!file.isAbsolute()) {
            throw new IllegalArgumentException("유효하지 않은 절대 경로입니다: " + normalizedPath);
        }

        return normalizedPath;
    }
}