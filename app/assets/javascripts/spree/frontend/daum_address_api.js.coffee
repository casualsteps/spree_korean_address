addressPopup = document.getElementById("addressPopup")

# 우편번호 찾기 iframe을 넣을 element
$(document).on "click", "#btnClose", ->
  # iframe을 넣은 element를 안보이게 한다.
  addressPopup.style.display = "none"

$(document).on "click", "#showDaumPostCode", ->
  # 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  # 우편번호와 주소 및 영문주소 정보를 해당 필드에 넣는다.
  # iframe을 넣은 element를 안보이게 한다.
  new daum.Postcode(
    oncomplete: (data) ->
      document.getElementById("order_bill_address_attributes_zipcode").value = data.postcode1 + "-" + data.postcode2
      document.getElementById("order_bill_address_attributes_address1").value = data.address
      document.getElementById("order_bill_address_attributes_address2").focus()
      addressPopup.style.display = "none"
      return
  ).embed addressPopup
  # iframe을 넣은 element를 보이게 한다.
  addressPopup.style.display = "block"

