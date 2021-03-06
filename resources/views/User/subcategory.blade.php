@extends('User.layouts.master')
@section('body')




<div class="col-md-12">
	<div class="container">
		<div class="row">
			@if(count($product_cat)>0)
			<div class="pb-5">


				<div class="col-md-12 mt-2 cathead">
					@if($subcategory->banner == !Null)
					<center><img src="{{ asset('public/itemImage') }}/{{ $subcategory->banner }}" class="img-fluid rounded"></center>
					@endif<br>
					<strong>{{$subcategory->subcategory_name}}</strong>
				</div>

				<div class="col-md-12">
					<div class="scrolling-pagination">
						<div class="row">


							@if(isset($product_cat))
							@foreach($product_cat as $product)
							@php 
							$productname=str_replace(["%","/"," "],"-",$product->product_name)
							@endphp

							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-6 mt-4">
								@include('components.product-long')
							</div>


							@endforeach
							@endif



							{{ $product_cat->links() }}

						</div>

					</div>
				</div>

			</div>

			@else	

			<div class="col-12 pt-5">
				<div class="container padd">
					<center><img src="{{ asset('public/Frontend/img/no-order.svg') }}" class="img-fluid"><br>
						<strong class="text-dark">Product Not Found</strong>
					</center>

				</div>
			</div>


			@endif


			@include('components.exchange_policy')
			
		</div>
	</div>
</div>







@endsection