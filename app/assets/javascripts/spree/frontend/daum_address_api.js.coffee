@AddressPopup = (->

  bind: ->
    $btn = $('.address-btn')
    return unless $btn

    $zipcode = $('[id$=_address_attributes_zipcode]')
    $address1 = $('[id$=_address_attributes_address1]')
    $address2 = $('[id$=_address_attributes_address2]')
    return unless $zipcode and $address1 and $address2

    # TODO: CSS?
    $addressPopup = $('<div id="addressPopup" class="address-popup"><span class="close-btn">X</span></div>')
    $addressPopup.appendTo('body')

    $btn.click (e) ->
      e.preventDefault()
      new daum.Postcode(
        oncomplete: (data) ->
          $zipcode.val(data.postcode1 + "-" + data.postcode2)
          $address1.val(data.address)
          $address2.focus()
          $addressPopup.hide()
        , width : '100%', height : '100%'
      ).embed($addressPopup[0])

      $addressPopup.show()
      $addressPopup.find('.close-btn').unbind().click (e) -> $addressPopup.hide()
)()

# TODO: We should only run it on pages that need address popup
$ -> AddressPopup.bind()