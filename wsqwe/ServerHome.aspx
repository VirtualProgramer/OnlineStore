<%@ Page Title="" Language="C#" MasterPageFile="~/ProdBacktages.master" AutoEventWireup="true" CodeFile="ServerHome.aspx.cs" Inherits="ServerHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Count Down Area -->
    <div class="countdown-area">
        <div class="container">
            <div class="countdown-content">
                <div class="title text-center">
                    <h1 class="mb-10">現主時購物網 | 後臺管理系統</h1>
                    <p>身兼百職的管理員們，現主時購物網在此跟您說聲辛苦了。</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-lg-4"></div>
                <div class="col-xl-6 col-lg-7">
                    <div class="countdown d-flex justify-content-center justify-content-md-end" id="js-countdown">
                        <div class="countdown-item">
                            <div class="countdown-timer js-countdown-days time" aria-labelledby="day-countdown">
                            </div>

                            <div class="countdown-label" id="day-countdown">Days</div>
                        </div>

                        <div class="countdown-item">
                            <div class="countdown-timer js-countdown-hours" aria-labelledby="hour-countdown">
                            </div>

                            <div class="countdown-label" id="hour-countdown">Hours</div>
                        </div>

                        <div class="countdown-item">
                            <div class="countdown-timer js-countdown-minutes" aria-labelledby="minute-countdown">
                            </div>

                            <div class="countdown-label" id="minute-countdown">Minutes</div>
                        </div>

                        <div class="countdown-item">
                            <div class="countdown-timer js-countdown-seconds" aria-labelledby="second-countdown">
                            </div>

                            <div class="countdown-label text" id="second-countdown">Seconds</div>
                        </div>
                        <a href="#" class="view-btn primary-btn2"><span>Shop Now</span></a>
                        <img src="img/cd.png" class="img-fluid cd-img" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Count Down Area -->
</asp:Content>

