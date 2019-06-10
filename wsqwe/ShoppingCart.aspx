<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                <div class="col-first">
                    <h1>購物車</h1>
                    <nav class="d-flex align-items-center justify-content-start">
                        <a href="Home.aspx">首頁<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                        <a href="ShoppingCart.aspx">購物車</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    <!-- Start Cart Area -->
    <div class="container">
        <div class="cart-title">
            <div class="row">
                <div class="col-md-6">
                    <h6 class="ml-15">商品資訊</h6>
                </div>
                <div class="col-md-2">
                    <h6>價格</h6>
                </div>
                <div class="col-md-2">
                    <h6>數量</h6>
                </div>
                <div class="col-md-2">
                    <h6>總金額</h6>
                </div>
            </div>
        </div>

        <% =GetShoppingCartName() %>

        <form runat="server">
            <asp:repeater id="Repeater1" runat="server" datasourceid="ObjectDataSource1">
                <HeaderTemplate>
                    <div class="cart-single-item">
                        <div class="row align-items-center">
                </HeaderTemplate>
                <ItemTemplate>
                <%--<div class="col-md-6 col-12">
                    <div class="img-fluid"
                        style="background-image: url('/img/<%# Eval("ImageFileName") %>'); background-repeat: no-repeat; background-size: cover; width: 152px; height: 106px">
                        <h6><%# Eval("Name") %></h6>
                    </div>
                </div>--%>
                    <div class="col-md-6 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src='/img/<%# Eval("ImageFileName") %>' class="img-fluid" alt="">
                                <h6><%# Eval("Name") %></h6>
                            </div>
                        </div>
                    <div class="col-md-2 col-6">
                        <div class="price">NT$<%# Eval("Price") %></div>
                    </div>
                    <div class="col-md-2 col-6">
                        <div class="quantity-container d-flex align-items-center mt-15">
                            <asp:TextBox runat="server"  TextMode="Number" Text='<%# Eval("Amount") %>' />
                            <%--        <div class="arrow-btn d-inline-flex flex-column">
                            <button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
                            <button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
                        </div>--%>
                        </div>
                    </div>
                    <div class="col-md-2 col-12">
                        <div class="total">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
    </div>
    </div>
                </FooterTemplate>
            </asp:Repeater>
        </form>
        <asp:objectdatasource runat="server" id="ObjectDataSource1" selectmethod="GetProduct" typename="ProductHandler">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:objectdatasource>
    <div class="cupon-area d-flex align-items-center justify-content-between flex-wrap">
        <a href="#" class="view-btn color-2"><span>Update Cart</span></a>
        <div class="cuppon-wrap d-flex align-items-center flex-wrap">
            <div class="cupon-code">
                <input type="text">
                <button class="view-btn color-2"><span>Apply</span></button>
            </div>
            <a href="#" class="view-btn color-2 have-btn"><span>Have a Coupon?</span></a>
        </div>
    </div>
    <div class="subtotal-area d-flex align-items-center justify-content-end">
        <div class="title text-uppercase">Subtotal</div>
        <div class="subtotal">$2160.00</div>
    </div>
    <div class="shipping-area d-flex justify-content-end">
        <div class="tile text-uppercase">Shipping</div>
        <form action="#" class="d-inline-flex flex-column align-items-end">
            <ul class="d-flex flex-column align-items-end">
                <li class="filter-list">
                    <label for="flat-rate">Flat Rate:<span>$5.00</span></label>
                    <input class="pixel-radio" type="radio" id="flat-rate" name="brand">
                </li>
                <li class="filter-list">
                    <label for="free-shipping">Free Shipping</label>
                    <input class="pixel-radio" type="radio" id="free-shipping" name="brand">
                </li>
                <li class="filter-list">
                    <label for="flat-rate-2">Flat Rate:<span>$10.00</span></label>
                    <input class="pixel-radio" type="radio" id="flat-rate-2" name="brand">
                </li>
                <li class="filter-list">
                    <label for="local-delivery">Local Delivery:<span>$2.00</span></label>
                    <input class="pixel-radio" type="radio" id="local-delivery" name="brand">
                </li>
                <li class="calculate">Calculate Shipping</li>
            </ul>
            <div class="sorting">
                <select>
                    <option value="1">Bangladesh</option>
                    <option value="1">India</option>
                    <option value="1">Srilanka</option>
                </select>
            </div>
            <div class="sorting mt-20">
                <select>
                    <option value="1">Select a State</option>
                    <option value="1">Select a State</option>
                    <option value="1">Select a State</option>
                </select>
            </div>
            <input type="text" placeholder="Postcode/Zipcode" onfocus="this.placeholder=''" onblur="this.placeholder = 'Postcode/Zipcode'" required class="common-input mt-10">
            <button class="view-btn color-2 mt-10"><span>Update Details</span></button>
        </form>

    </div>
    </div>
    <!-- End Cart Area -->
</asp:Content>

