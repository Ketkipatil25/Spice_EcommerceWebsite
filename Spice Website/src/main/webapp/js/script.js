function add_to_cart(pid,pName,pPrice){
	
	let cart = localStorage.getItem("cart");
	
	if(cart == null){
		// no  cart present
		
		let products =[];
		let product ={ productId:pid , productName:pName , productQuantity: 1 , productPrice:pPrice};
		products.push(product);
		
		//products present in array convert them in string using stringify
		localStorage.setItem("cart" , JSON.stringify(products));
		//console.log("Product added for first time")
		showToast("Item added to cart.")
	}
	
	else{
		//cart already present
		
		let pcart = JSON.parse(cart);
		
		let oldproduct = pcart.find((item) => item.productId == pid)
		
		
		if(oldproduct){
			//same product found already so just increase quantity
			oldproduct.productQuantity = oldproduct.productQuantity + 1;
			//map fun to traverse from array
			pcart.map((item) => {
				
				if(item.productId == oldproduct.productId){
					item.productQuantity = oldproduct.productQuantity;
				}
				
			})
			
			
			localStorage.setItem("cart", JSON.stringify(pcart));
			//console.log("Product quantity increased.")
			showToast(oldproduct.productName+"Quantity increased.")
		}
		
		else{
			//we add new product
			let product ={ productId:pid , productName:pName , productQuantity: 1 , productPrice:pPrice};
			pcart.push(product);
			localStorage.setItem("cart", JSON.stringify(pcart));
			console.log("Product added.")
			showToast("Product is added to cart.")
		}
		
	}
	
	updatecart();
	
}

//update cart
function updatecart(){
	let cartString = localStorage.getItem("cart");
	let cart = JSON.parse(cartString);
	
	if(cart == null || cart.length == 0){
		console.log("Cart Empty.")
		$(".cart-items").html("(0)");
		$(".cart-body").html("<h3>Cart does not have any items!!</h3>");
		$(".checkout-btn").attr('disabled',true);
	}
	else{
		//there are products in cart to show
		console.log(cart)
		$(".cart-items").html(`(${cart.length})`);
		let table =`
			<table class='table'>
			<thead class='thead-light'>
				<tr>
				<th>Item Name</th>		
				<th>Price</th>	
				<th>Quantity</th>	
				<th>Total Price</th>
				<th>Action</th>		
				
				</tr>
				
				</thead>
		
			`;
			
			let totalPrice =0;
			
			//print added items in the cart modal
			cart.map((item) => {
				
				table+= `
				
					<tr>
						<td>${item.productName}</td>
						<td>${item.productPrice}</td>
						<td>${item.productQuantity}</td>
						<td>${item.productQuantity * item.productPrice}</td>
						<td><button onclick='deleteItem(${item.productId})' class='btn btn-danger btn-sm'>Remove</button></td>
					
					
					</tr>	
				`	
				//calculate total price
				totalPrice += item.productPrice * item.productQuantity;			
			})
		
		table = table+ `
		
			<tr><td colspan="5" class="text-right font-weight-bold m-5"> Total Price : ${totalPrice} </td></tr>
		
		</table>`
		$(".cart-body").html(table);
		$(".checkout-btn").attr('disabled' ,false);
		
	}
	
	
}

function deleteItem(pid){
	
	 let cart= JSON.parse(localStorage.getItem('cart'));
	 
	 let newcart =  cart.filter((item) => item.productId != pid);
	 
	 localStorage.setItem('cart' ,JSON.stringify(newcart))
	 
	 updatecart()
	 
	 showToast("Item is removed from cart.")
}


$(document).ready(function () {
	updatecart()
})


function showToast(content){
	$("#toast").addClass("display");
	$("#toast").html(content);
	setTimeout(() => {
		$("#toast").removeClass("display");
	} , 2000);
	
}

function goToCheckout(){
	window.location = "checkout.jsp";
}
