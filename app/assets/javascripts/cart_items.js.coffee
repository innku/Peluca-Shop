
$(document).ready ->

  $("#add_to_cart").click (e) ->
    e.preventDefault()
    $.ajax
      url: "/cart_items.json",
      data: { wig_id: $(this).attr('data_wig')},
      type: 'POST'
      success: (data) ->
        #update cart
        $("#quantity_item_" + data.id).text(data.quantity)
        $("#total_item_" + data.id).text(data.total_price)
        old_total = parseFloat($("#total_a_pagar").text())
        $("#total_a_pagar").text((old_total + data.wig.price))
        
