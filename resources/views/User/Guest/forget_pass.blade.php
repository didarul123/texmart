@extends('User.layouts.master')

@section('body')



<div class="col-md-12">
  <div class="container">
    <div class="mx-auto my-5 p-4 pb-5 formback" style="max-width: 400px;">
      <center><strong>Forget Password</strong><br><span>A OTP token will sent to your mobile phone</span></center>
      <hr>

      @include('msg.flash')

      <form method="post" action="{{url('/guest-forget')}}">
        @csrf
        <div class="form-group col-md-12 mb-3">
          <label>Phone Number</label>
          <input type="text" name="phone" autocomplete="off" id="phone" class="form-control">
        </div>


        <div class="col-md-12 mt-2 mb-3">
          <button type="submit" class="btn btn-dark d-block w-100 p-2">Send OTP</button>
        </div>
      </form>

      <br>
      <center>
        <span>Already have an account? <a href="{{ url('/user-login') }}" class="text-warning">Login</a></span><br><br>
      </center>
    </div>

  </div>
</div>





@endsection