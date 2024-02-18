@extends('layouts.app')

@section('content')
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 d-flex justify-content-center">
                        <div class="card my-15" style="width:600px">
                            <div class="card-body p-3 text-center" >
                                <div class="h3 font-weight-light">Forgot Password</div>
                            </div>
                            <hr class="my-0 border-light" />
                            <div class="card-body p-4">
                                @if (Session::has('message'))
                         <div class="alert alert-success" role="alert">
                            {{ Session::get('message') }}
                        </div>
                    @endif
  
                      <form action="{{ route('forget.password.post') }}" method="POST">
                          @csrf
                          <div class="form-group row">
                              <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                              <div class="col-md-7">
                                  <input type="text" id="email_address" class="form-control" name="email" required autofocus>
                                  @if ($errors->has('email'))
                                      <span class="text-danger">{{ $errors->first('email') }}</span>
                                  @endif
                              </div>
                          </div>
                          <div class="col-md-8 offset-md-4">
                            <button type="submit" class="btn btn-submit" style="background: transparent;
                            border: none !important; ">
                              <a>Send Password Reset Link</a>
                            </button>
                            
                          </div>
                      </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div id="layoutAuthentication_footer">
  
    </div>
</div>
@endsection
