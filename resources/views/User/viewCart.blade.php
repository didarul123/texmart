
@if(count($view) > 0)
@foreach($view as $viewdata)


<div class="col-md-12 pt-2 pb-2 border-bottom">
	<div class="row">
		<div class="col-md-3 col-3">
			<a href=""><img src="{{asset('public/productImage')}}/{{$viewdata->image}}" class="img-fluid"></a>
		</div>

		<div class="col-md-9 col-9">
			<strong class="text-dark mb-2" style="line-height: 1.3;">{{ substr($viewdata->product_name, 0, 90) }}... <span>{{ $viewdata->size ?? '' }} - {{ $viewdata->color ?? '' }}</span> </strong>

			<a onclick="delete_product('{{$viewdata->id}}')">
				<i class="fa fa-trash-o text-dark float-end" uk-tooltip="title: Remove; pos:bottom" style="font-size: 12px;"></i
				>
			</a>
			<br>

			<p style="font-size: 20px;color: #333;margin: 0;line-height: 1.4;font-weight: bold;">৳ {{$viewdata->current_price}}</p><br>
			<!-- X {{$viewdata->quantity}} -->
			<div class="d-flex align-items-center">
				<span class="me-2 text-dark" style="font-size: 18px;">Qty: </span>
				<input type="number" class="product-quantity" min="1">
				<button class="btn btn-sm"><i class="fas fa-save"></i></button>
			</div>

		{{-- 	<form id='myform' method='POST' action='' class="mt-2">
				<input type='button' value='-' class='qtyminus' field='quantity' />
				<input type='text' name='quantity' min="1" value='{{$viewdata->quantity}}' class='qty' />
				<input type='button' value='+' class='qtyplus' onclick="AddCart('{{ $viewdata->id }}')" field='quantity' />
			</form> --}}
		</div>
	</div>
</div>

@endforeach

@else
    <div class="col-md-12 pt-2 pb-2 text-center mt-5">
        
        <i class="bi bi-cart3 nav-icon" style="font-size: 700%;display: block;margin-bottom: 25px;color: #ccc;"></i>

        <a href="{{ URL::to('/') }}"><button style=" margin: 40px 20px 0 20px;display: block;color: #fff;padding: 12px 15px;background: #b20000;border: 0;  width: 89%;">RETURN TO SHOP</button></a>
       
    </div>

@endif

<script>
	$('.product-quantity').niceNumber({
		autoSizeBuffer: 3,
	});
</script>
