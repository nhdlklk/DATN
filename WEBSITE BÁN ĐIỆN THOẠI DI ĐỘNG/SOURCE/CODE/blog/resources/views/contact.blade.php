@extends('layouts.app')
@section('content')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-inner">
                        <ul>
                            <li class="home">
                                <a href="index.html">Home</a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            <li class="category3"><span>Liên hệ</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-contact-area">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="contact-us-area">
                            <!-- google-map-area start -->
                            <div class="google-map-area">
                                <!--  Map Section -->
                                <div id="contacts" class="map-area">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7836.953038343003!2d106.755578!3d10.851315!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527bd80c66b4f%3A0x1243c8a70dc5d2e0!2zMSBWw7UgVsSDbiBOZ8OibiwgTGluaCBDaGnhu4N1LCBUaOG7pyDEkOG7qWMsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2sus!4v1588833856951!5m2!1svi!2sus" width="1170" height="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                </div>

                            </div>
                            <!-- google-map-area end -->
                            <!-- contact us form start -->
                            <div class="contact-us-form">
                                <div class="contact-form">
                                    <h5 class="legend">Mời bạn điền thông tin liên hệ</h5>
                                    <form action="" method="post">
                                        @csrf
                                        <div class="form-top">
                                            <div class="form-group col-sm-10 ">
                                                <label>Họ tên <sup>*</sup></label>
                                                <input type="text" name="c_name" class="form-control" required>
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6 col-lg-5">
                                                <label>Email <sup>*</sup></label>
                                                <input type="email" name="c_email" class="form-control" required>
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6 col-lg-5">
                                                <label>Tiêu đề <sup>*</sup></label>
                                                <input type="text" name="c_title" class="form-control" required>
                                            </div>

                                            <div class="form-group col-sm-12 col-md-12 col-lg-10">
                                                <label>Nội dung <sup>*</sup></label>
                                                <textarea class="yourmessage" name="c_content" required></textarea>
                                            </div>
                                            <div class="form-group col-sm-12 col-md-12 col-lg-10">

                                                <button type="submit" class="button btn-success">Gửi thông tin</button>
                                            </div>
                                        </div>
                                        <div class="submit-form form-group col-sm-12 submit-review">

                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- contact us form end -->
                        </div>
                    </div>
                </div>
            </div>
@stop
