<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="banner-area relative" id="home">
        <div class="container-fluid">
            <div class="row fullscreen align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12 d-flex align-self-end img-right no-padding">
                    <img class="img-fluid" src="img/home/header-img.png" alt="">
                </div>
                <div class="banner-content col-lg-6 col-md-12">
                    <h1 class="title-top"><span>在的喊在~</span> 全館商品滿兩千送兩百!</h1>
                    <h1 class="text-uppercase">加入會員<br>
                        還有機會獲得<br>
                        1,688購物金!
                    </h1>
                    <button class="primary-btn text-uppercase"><a href="Registered.aspx">即刻加入!</a></button>
                </div>
            </div>
        </div>
    </section>

    <!-- Start category Area -->
    <section class="category-area section-gap section-gap" id="catagory">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-40">
                    <div class="title text-center">
                        <h1 class="mb-10">一天的活力來源，你會選擇什麼?</h1>
                        <p>忙碌的上班族與正在發育的學生族群，每一天都是很重要的! 但是，你有注意到每天的早餐都吃了些什麼嗎?</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 mb-10">
                    <div class="row category-bottom">
                        <div class="col-lg-6 col-md-6 mb-30">
                            <div class="content">
                                <a href="#" target="_blank">
                                    <div class="content-overlay"></div>
                                    <div class="content-image img-fluid d-block mx-auto" id="home-image-1" style="background-image: url(/img/home/c1.jpg)"></div>
                                    <%--<img class="content-image img-fluid d-block mx-auto" src="img/home/c1.jpg" alt="">--%>
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">明太子御飯糰</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-30">
                            <div class="content">
                                <a href="#" target="_blank">
                                    <div class="content-overlay"></div>
                                    <div class="content-image img-fluid d-block mx-auto" id="home-image-2" style="background-image: url(/img/home/c2.jpg)"></div>
                                    <%--<img class="content-image img-fluid d-block mx-auto" src="img/home/c2.jpg" alt="">--%>
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Product for Couple</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="content">
                                <a href="#" target="_blank">
                                    <div class="content-overlay"></div>
                                    <div class="content-image img-fluid d-block mx-auto" id="home-image-3" style="background-image: url(/img/home/c3.jpg)"></div>
                                    <%--<img class="content-image img-fluid d-block mx-auto" src="img/home/c3.jpg" alt="">--%>
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Shop Now</h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 mb-10">
                    <div class="content">
                        <a href="#" target="_blank">
                            <div class="content-overlay"></div>
                            <div class="content-image img-fluid d-block mx-auto" id="home-image-4" style="background-image: url(/img/home/c4.jpg)"></div>
                            <%--<img class="content-image img-fluid d-block mx-auto" src="img/home/c4.jpg" alt="">--%>
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Product For Men</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End category Area -->

    <section class="men-product-area section-gap relative" id="men">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-40">
                    <div class="title text-center">
                        <h1 class="text-white mb-10">夏日晨之美 飲料嘉年華會</h1>
                        <p class="text-white">自6/1日起至8/31日止，凡購買指定飲品就有機會獲得夏威夷兩人機票，詳情請見活動網頁。</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/ProdImages/Greentea.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">統一純喫茶(綠茶)</h5>
                        <h3 class="text-white">NT$20</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/ProdImages/Orange Julice.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">每日C新鮮柳橙汁</h5>
                        <h3 class="text-white">NT$25</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/ProdImages/yurowzoo.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">統一AB優酪乳(原味)</h5>
                        <h3 class="text-white">NT$35</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 single-product">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img class="content-image img-fluid d-block mx-auto" src="img/ProdImages/soymilk.jpg" alt="">
                        <div class="content-details fadeIn-bottom">
                            <div class="bottom d-flex align-items-center justify-content-center">
                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                <a href="#" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="price">
                        <h5 class="text-white">統一陽光鮮豆漿(無加糖)</h5>
                        <h3 class="text-white">NT$30</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

