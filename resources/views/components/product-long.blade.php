    

    <?php 

        $avg_rating = App\ProductRating::where('product_id', $product->product_id)->where('status', 1)->avg('guest_rating');

        $total_rating = App\ProductRating::where('product_id', $product->product_id)->where('status', 1)->count();

    ?>

                    <div class="product-cart">
                        <div class="product-cart__image">
                            

                                @if($product->type == 1)

                                    <div class="product-cart__badge">
                                        <span>Top Selling</span>
                                    </div>

                                @elseif($product->type == 2)

                                    <div class="product-cart__badge">
                                        <span>Latest</span>
                                    </div>

                                @elseif($product->type == 3)

                                    <div class="product-cart__badge">
                                        <span>Upcomming</span>
                                    </div>

                                @elseif($product->type == 4)
                                
                                    <div class="product-cart__badge">
                                        <span>Tranding</span>
                                    </div>
                              
                                @endif
    
                            

                            <a href="{{ url('product') }}/{{ $productname }}/{{ $product->product_id }}"><img src="{{ asset('public/productImage') }}/{{ $product->image }}" alt=""></a>

                            @if($product->discount_per != 0)
                            <div class="product-cart__discount mt-3">
                                        
                                {{$product->discount_per }}% OFF
                                
                            </div>
                            @endif

                            <div class="product-cart__button-container">


                                @if($product->stock_status == 1)
                                    <button class="product-cart__wishlist" onclick="AddCart('{{ $product->id }}')"><span class="add_to_cart_btn"></span>  <i class="fa-solid fa-cart-arrow-down"></i></button>
                                @else
                                    <button class="product-cart__wishlist" style="cursor: not-allowed;"><i class="fa-solid fa-cart-arrow-down"></i></button>
                                @endif


                                <button class="product-cart__wishlist"  onclick="AddToWishList('{{ $product->id }}')"><i class="fa-regular fa-heart"></i></button>
                            </div>
                        </div>
                        <a href="{{ url('product') }}/{{ $productname }}/{{ $product->product_id }}" class="product-cart__title mt-3 mb-2">{{ Str::limit($product->product_name, 35) }}</a>
                        <div>
                            <div class="rating-product">
                                @if($avg_rating == 5)
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                @elseif($avg_rating >= 4)
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                @elseif($avg_rating >= 3)
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                @elseif($avg_rating >= 2)
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                @elseif($avg_rating >= 1)
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                @else
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                @endif

                                <span>({{$total_rating ?? 0}})</span>
                            </div>
                        </div>
                        <div class="product-cart__price">
                            @if ($product->discount_price > 0)
                            <span class="product-cart__price--old">৳ {{ number_format($product->sale_price, 2, '.', ',') }}</span>
                            @endif
                            <span class="product-cart__price--new">৳ {{ number_format($product->current_price, 2, '.', ',') }}</span>
                        </div>
                    </div>