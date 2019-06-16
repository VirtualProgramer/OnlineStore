<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Confermation.aspx.cs" Inherits="Confermation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Billing Details Form -->
    <div class="container">
        <div class="billing-form" style="font-family: 'Microsoft YaHei UI'">
            <div class="row">
                <div class="col-12">
                    <div class="order-wrapper mt-50">
                        <h3 class="billing-title mb-10">您的訂單資訊</h3>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <div class="order-list">
                                    <div class="list-row d-flex justify-content-between">
                                        <div>商品資訊</div>
                                        <div>金額</div>
                                    </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="list-row d-flex justify-content-between" style="display:flex">
                                    <div><%# Eval("Name") %></div>
                                    <div>x<%# Eval("Count") %></div>
                                    <div>NT$<%# Eval("Totalprice") %></div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </FooterTemplate>
                        </asp:Repeater>
                        <%--<div class="list-row d-flex justify-content-between">
                                <h6>Subtotal</h6>
                                <div>$2160.00</div>
                            </div>--%>
                        <div class="list-row border-bottom-0 d-flex justify-content-between">
                            <h6>總金額</h6>
                            <div class="total">
                                <asp:Label ID="Label1" runat="server" Text="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- End Billing Details Form -->

    <!-- Start Most Search Product Area -->
    <section class="section-half">
        <div class="container">
            <div class="organic-section-title text-center">
                <h3>Most Searched Products</h3>
            </div>
            <div class="row mt-30">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r1.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Blueberry</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$240.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r2.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Cabbage</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$189.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r3.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Raspberry</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$189.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r4.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Kiwi</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$189.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r5.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore Bell Pepper</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$120.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r6.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Blackberry</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$120.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r7.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Brocoli</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$120.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r8.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Carrot</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$120.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r9.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Strawberry</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$240.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r10.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Prixma MG2 Light Inkjet</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$240.00</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r11.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Cherry</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$240.00 <del>$340.00</del></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="single-search-product d-flex">
                        <a href="#">
                            <img src="img/r12.jpg" alt=""></a>
                        <div class="desc">
                            <a href="#" class="title">Pixelstore fresh Beans</a>
                            <div class="price"><span class="lnr lnr-tag"></span>$240.00 <del>$340.00</del></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Most Search Product Area -->
</asp:Content>

