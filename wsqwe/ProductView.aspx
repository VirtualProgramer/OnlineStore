﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="margin-top: 0">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                <div class="col-first">
                    <h1>Product Edit</h1>
                    <nav class="d-flex align-items-center justify-content-start">
                        <a href="index.html">Home
                                <i class="fa fa-caret-right" aria-hidden="true"></i>
                        </a>
                        <a href="cart.html">Product Edit</a>
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
                    <h6 class="ml-15">Product</h6>
                </div>
                <div class="col-md-2">
                    <h6>Price</h6>
                </div>
                <div class="col-md-2">
                    <h6>Stock</h6>
                </div>
                <div class="col-md-2">
                    <h6>Edit</h6>
                </div>
            </div>
        </div>
        <form runat="server">
            <!-- Start Repeater -->
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                <ItemTemplate>
                    <div class="cart-single-item">
                        <div class="row align-items-center">
                            <div class="col-md-6 col-12">
                                <div class="product-item d-flex align-items-center">
                                    <div class="img-fluid"
                                        style="background-image: url('/img/<%# Eval("ImageFileName") %>'); background-repeat: no-repeat; background-size: cover; width: 152px; height: 106px">
                                    </div>
                                    <h6><%# Eval("Name") %></h6>
                                </div>
                            </div>
                            <div class="col-md-2 col-6">
                                <div class="price">$<%# Eval("Price") %></div>
                            </div>
                            <div class="col-md-2 col-6">
                                <div class="price"><%# Eval("Amount") %></div>
                            </div>
                            <div class="col-md-2 col-12">
                                <a href='UpdateProduct.aspx?id=<%# Eval("id") %>' class="total" style="margin: 15px 0">Update</a>
                                <br />
                                <asp:Button ID="Button2" class="total" Style="margin: 15px 0 0 0; border: 0; padding: 0; background: none;"
                                    CommandName='<%# Eval("id") %>' runat="server" OnClick="Button2_Click"
                                    Text="Delete" OnClientClick="return confirm('delete?')" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProduct" TypeName="ProductHandler" DeleteMethod="DeleteProduct"></asp:ObjectDataSource>
            <!-- End Repeater -->
        </form>
        <div class="cupon-area d-flex align-items-center justify-content-between flex-wrap">
            <a href="AddProduct.aspx" class="view-btn color-2"><span>New Product</span></a>
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
            <div action="#" class="d-inline-flex flex-column align-items-end">
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
                <button class="view-btn color-2 mt-10" style="font-size:small"><span>Update Details</span></button>
            </div>
        </div>
    </div>
    <!-- End Cart Area -->

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

