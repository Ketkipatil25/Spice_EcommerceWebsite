<!-- Cart Modal -->
<div style="font-family: 'Kameron', serif;" class="modal fade" id="cart" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div style="background-color:#b3151b" class="modal-header text-white">
        <h5 class="modal-title" id="exampleModalLabel">Your Cart</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
        <div class="cart-body">
        	
        	<% //loop %>
        	
        </div>
        
      </div>
      <div class="modal-footer">
        <button style="background-color:#b3151b" type="button" class="btn text-white" data-bs-dismiss="modal">Close</button>
        <button style="background-color:#b3151b" type="button" class="btn text-white" class="checkout-btn" onclick="goToCheckout()">Checkout</button>
      </div>
    </div>
  </div>
</div>


<!-- Toast div -->

<div id="toast">This is out custom Toast</div>