(function() {
  $(function() {
    $(".bemon-N9[id='OSMAXjKO12']").each(function() {
      const $block = $(this);
      const $checksetWrap = $block.find(".checkset-wrap");

      // 체크박스 그룹 유효성 체크 input 추가
      if ($checksetWrap.length) {
        const $validator = $('<input>', {
          type: 'text',
          required: true,
          style: 'position: absolute; opacity: 0; pointer-events: none;',
          tabindex: -1
        }).insertBefore($checksetWrap.find('.category-input').first());

        const $groupChecks = $checksetWrap.find('.category-input'); // 모든 체크박스
        const $checkAll = $checksetWrap.find('.category-input[value="all"]'); // "전체" 체크박스
        const $individualChecks = $groupChecks.not($checkAll); // 개별 체크박스

        // 기존 체크박스의 required 속성 제거
        $groupChecks.prop('required', false);

        // "전체" 체크박스 클릭 이벤트
        $checkAll.on('change', function() {
          const isChecked = $checkAll.is(':checked');
          $individualChecks.prop('checked', isChecked); // 개별 체크박스 전체 선택/해제
          updateValidator(); // 유효성 검사 업데이트
        });

        // 개별 체크박스 클릭 이벤트
        $individualChecks.on('change', function() {
          const allChecked = $individualChecks.length === $individualChecks.filter(':checked').length;
          const noneChecked = $individualChecks.filter(':checked').length === 0;

          if (allChecked) {
            $checkAll.prop('checked', true); // 모두 선택되면 "전체" 체크
          } else {
            $checkAll.prop('checked', false); // 하나라도 선택되지 않으면 "전체" 해제
          }

          updateValidator(); // 유효성 검사 업데이트
        });

        // 유효성 검사 업데이트 함수
        function updateValidator() {
          if ($groupChecks.is(':checked')) {
            $validator.val('checked');
            $validator[0].setCustomValidity('');
          } else {
            $validator.val('');
            $validator[0].setCustomValidity('카테고리를 최소 하나 이상 선택해주세요.');
          }
        }

        // 초기 상태 설정: "전체"와 개별 체크박스 모두 선택
        $validator.val('checked'); // 유효성 검사 통과 상태로 설정
        $validator[0].setCustomValidity(''); // 초기에는 유효성 검사 오류 없음
      }
    });
  });
})();

