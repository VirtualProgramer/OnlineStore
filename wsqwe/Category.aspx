<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" %>

<script runat="server">

    public string GetFileName(object obj) {
        if (obj.ToString() == "") {
            return "style=\"background-image:url('/img/default.png')\"";
        } else {
            return $"style=\"background-image:url('/img/{obj}')\"";
        }
    }

</script>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Start Banner Area -->
    <section class="banner-area uuu-category-section">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                <div class="col-first">
                    <h1>Shop Category page</h1>
                    <nav class="d-flex align-items-center justify-content-start">
                        <a href="index.html">Home<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                        <a href="category.html">Fashon Category</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <div class="container">
        <div class="row">
            <div class="col-xl-9 col-lg-8 col-md-7">

                <!-- Start Filter Bar -->
                <div class="filter-bar d-flex flex-wrap align-items-center">
                    <a href="#" class="grid-btn active"><i class="fa fa-th" aria-hidden="true"></i></a>
                    <a href="#" class="list-btn"><i class="fa fa-th-list" aria-hidden="true"></i></a>
                    <div class="sorting">
                        <select>
                            <option value="1">Default sorting</option>
                            <option value="1">Default sorting</option>
                            <option value="1">Default sorting</option>
                        </select>
                    </div>
                    <div class="sorting mr-auto">
                        <select class="per-page">
                            <option value="6">Show 6</option>
                            <option value="9">Show 9</option>
                            <option value="12">Show 12</option>
                        </select>
                    </div>
                    <div class="pagination">
                        <%-- <a class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
                        <a class="page-number active">1</a>
                        <a class="page-number">2</a>
                        <a class="page-number">3</a>
                        <a class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                        <a class="page-number">6</a>
                        <a class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>--%>
                    </div>
                </div>
                <!-- End Filter Bar -->

                <!-- Start Best Seller -->
                <section class="lattest-product-area pb-40 category-list">
                    <form id="form1" runat="server">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                            <HeaderTemplate>
                                <div class="row single-product-list">
                            </HeaderTemplate>
                            <ItemTemplate>

                                <div class="col-xl-4 col-lg-6 col-md-12 col-sm-6 single-product">
                                    <div class="content">
                                        <div class="content-overlay"></div>
                                        <div class="content-image img-fluid d-block mx-auto my-category-product-img" <%# GetFileName(Eval("ImageFileName")) %>></div>
                                        <%--<img class="content-image img-fluid d-block mx-auto" src='<%# GetFileName(Eval("ImageFileName")) %>' alt="">--%>
                                        <div class="content-details fadeIn-bottom">
                                            <div class="bottom d-flex align-items-center justify-content-center">
                                                <a href="#"><span class="lnr lnr-heart"></span></a>
                                                <a href="#"><span class="lnr lnr-layers"></span></a>
                                                <a href="#"><span class="lnr lnr-cart"></span></a>
                                                <asp:HyperLink ID="HyperLink1" runat="server"
                                                    NavigateUrl='<%# Eval("ID" , "~/Single3.aspx?id={0}") %>'>
                                                    <span class="lnr lnr-frame-expand"></span>
                                                </asp:HyperLink>
                                                <%--<a href="Single.aspx" data-toggle="modal" data-target="#exampleModal"><span class="lnr lnr-frame-expand"></span></a>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <h5><%# Eval("Name") %></h5>
                                        <h3>$<%# Eval("Price") %></h3>
                                    </div>
                                </div>

                            </ItemTemplate>
                            <FooterTemplate>
                                </div>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllProduct" TypeName="ProductHandler"></asp:ObjectDataSource>
                    </form>
                </section>
                <!-- End Best Seller -->

                <!-- Start Filter Bar -->
                <div class="filter-bar d-flex flex-wrap align-items-center">
                    <div class="sorting mr-auto">
                        <select class="per-page">
                            <option value="6">Show 6</option>
                            <option value="9">Show 9</option>
                            <option value="12">Show 12</option>
                        </select>
                    </div>
                    <div class="pagination">
                        <%--<a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                        <a href="#">6</a>
                        <a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>--%>
                    </div>
                </div>
                <!-- End Filter Bar -->

            </div>
            <div class="col-xl-3 col-lg-4 col-md-5">
                <div class="sidebar-categories">
                    <div class="head">Browse Categories</div>
                    <ul class="main-categories">
                        <li class="main-nav-list"><a data-toggle="collapse" href="#fruitsVegetable" aria-expanded="false" aria-controls="fruitsVegetable"><span class="lnr lnr-arrow-right"></span>Fruits and Vegetables<span class="number">(53)</span></a>
                            <ul class="collapse" id="fruitsVegetable" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>

                        <li class="main-nav-list"><a data-toggle="collapse" href="#meatFish" aria-expanded="false" aria-controls="meatFish"><span class="lnr lnr-arrow-right"></span>Meat and Fish<span class="number">(53)</span></a>
                            <ul class="collapse" id="meatFish" data-toggle="collapse" aria-expanded="false" aria-controls="meatFish">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#cooking" aria-expanded="false" aria-controls="cooking"><span class="lnr lnr-arrow-right"></span>Cooking<span class="number">(53)</span></a>
                            <ul class="collapse" id="cooking" data-toggle="collapse" aria-expanded="false" aria-controls="cooking">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#beverages" aria-expanded="false" aria-controls="beverages"><span class="lnr lnr-arrow-right"></span>Beverages<span class="number">(24)</span></a>
                            <ul class="collapse" id="beverages" data-toggle="collapse" aria-expanded="false" aria-controls="beverages">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#homeClean" aria-expanded="false" aria-controls="homeClean"><span class="lnr lnr-arrow-right"></span>Home and Cleaning<span class="number">(53)</span></a>
                            <ul class="collapse" id="homeClean" data-toggle="collapse" aria-expanded="false" aria-controls="homeClean">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a href="#">Pest Control<span class="number">(24)</span></a></li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#officeProduct" aria-expanded="false" aria-controls="officeProduct"><span class="lnr lnr-arrow-right"></span>Office Products<span class="number">(77)</span></a>
                            <ul class="collapse" id="officeProduct" data-toggle="collapse" aria-expanded="false" aria-controls="officeProduct">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#beauttyProduct" aria-expanded="false" aria-controls="beauttyProduct"><span class="lnr lnr-arrow-right"></span>Beauty Products<span class="number">(65)</span></a>
                            <ul class="collapse" id="beauttyProduct" data-toggle="collapse" aria-expanded="false" aria-controls="beauttyProduct">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#healthProduct" aria-expanded="false" aria-controls="healthProduct"><span class="lnr lnr-arrow-right"></span>Health Products<span class="number">(29)</span></a>
                            <ul class="collapse" id="healthProduct" data-toggle="collapse" aria-expanded="false" aria-controls="healthProduct">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a href="#">Pet Care<span class="number">(29)</span></a></li>
                        <li class="main-nav-list"><a data-toggle="collapse" href="#homeAppliance" aria-expanded="false" aria-controls="homeAppliance"><span class="lnr lnr-arrow-right"></span>Home Appliances<span class="number">(15)</span></a>
                            <ul class="collapse" id="homeAppliance" data-toggle="collapse" aria-expanded="false" aria-controls="homeAppliance">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                        <li class="main-nav-list"><a class="border-bottom-0" data-toggle="collapse" href="#babyCare" aria-expanded="false" aria-controls="babyCare"><span class="lnr lnr-arrow-right"></span>Baby Care<span class="number">(48)</span></a>
                            <ul class="collapse" id="babyCare" data-toggle="collapse" aria-expanded="false" aria-controls="babyCare">
                                <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a></li>
                                <li class="main-nav-list child"><a href="#">Meat Alternatives<span class="number">(01)</span></a></li>
                                <li class="main-nav-list child"><a href="#" class="border-bottom-0">Meat<span class="number">(11)</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="sidebar-filter mt-50">
                    <div class="top-filter-head">Product Filters</div>
                    <div class="common-filter">
                        <div class="head">Active Filters</div>
                        <ul>
                            <li class="filter-list"><i class="fa fa-window-close" aria-hidden="true"></i>Gionee (29)</li>
                            <li class="filter-list"><i class="fa fa-window-close" aria-hidden="true"></i>Black with red (09)</li>
                        </ul>
                    </div>
                    <div class="common-filter">
                        <div class="head">Brands</div>
                        <form action="#">
                            <ul>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                            </ul>
                        </form>
                    </div>
                    <div class="common-filter">
                        <div class="head">Color</div>
                        <form action="#">
                            <ul>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black Leather<span>(29)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black with red<span>(19)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
                                <li class="filter-list">
                                    <input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
                            </ul>
                        </form>
                    </div>
                    <div class="common-filter">
                        <div class="head">Price</div>
                        <div class="price-range-area">
                            <div id="price-range"></div>
                            <div class="value-wrapper d-flex">
                                <div class="price">Price:</div>
                                <span>$</span><div id="lower-value"></div>
                                <div class="to">to</div>
                                <span>$</span><div id="upper-value"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

    <script>
        var pageNow = 1;
        var perPageNumber = $(".per-page").val();

        function maxPage() {
            var pdListNumber = $(".single-product-list").children(".single-product").length;
            return Math.ceil(pdListNumber / perPageNumber);
        };

        function showSingleProduct() {
            var min = (pageNow - 1) * perPageNumber;
            var max = pageNow * perPageNumber;
            $(".single-product").hide();
            if (pageNow == 1) {
                $(`.single-product-list .single-product:lt(${max})`).show();
            } else {
                $(`.single-product-list .single-product:lt(${max}):gt(${min - 1})`).show();
            }
        }

        //自動生成翻頁按鈕
        function creatPagination() {

            var pageNumber = maxPage();

            if (pageNumber == 1) {
                $(".pagination").append(
                    `<a href="#1" class="page-number active">1</a>`
                );
            } else {
                $(".pagination").append(
                    `<a href="#1" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>`
                    //`<a href="#1" class="active page-number">1</a>`
                );
                if (pageNumber < 6) {
                    for (let index = 1; index < pageNumber + 1; index++) {
                        $(".pagination").append(
                            `<a href="#${index}" class="page-number">${index}</a>`
                        );
                    }
                } else {
                    if (pageNow == 1 || pageNow == 2) {
                        $(".pagination").append(
                            `<a href="#1" class="page-number">1</a>` +
                            `<a href="#2" class="page-number">2</a>` +
                            `<a href="#3" class="page-number">3</a>` +
                            `<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>` +
                            `<a href="#${pageNumber}" class="page-number">${pageNumber}</a>`
                        );
                    } else {
                        if (pageNow > (pageNumber - 3) && pageNow <= pageNumber) {
                            $(".pagination").append(
                                `<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>` +
                                `<a href="#${pageNumber - 3}" class="page-number">${pageNumber - 3}</a>` +
                                `<a href="#${pageNumber - 2}" class="page-number">${pageNumber - 2}</a>` +
                                `<a href="#${pageNumber - 1}" class="page-number">${pageNumber - 1}</a>` +
                                `<a href="#${pageNumber}" class="page-number">${pageNumber}</a>`
                            );
                        } else {
                            $(".pagination").append(
                                `<a href="#${pageNow - 1}" class="page-number">${pageNow - 1}</a>` +
                                `<a href="#${pageNow}" class="page-number">${pageNow}</a>` +
                                `<a href="#${Number(pageNow) + 1}" class="page-number">${Number(pageNow) + 1}</a>` +
                                `<a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>` +
                                `<a href="#${pageNumber}" class="page-number">${pageNumber}</a>`
                            );
                        }
                    }
                }
                $(".pagination").append(
                    `<a href="#${maxPage()}" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>`
                );
            }
        }

        //綁定換頁功能
        function switchPage() {

            $(".pagination .page-number").click(function () {

                if (!$(this).hasClass("active")) {

                    pageNow = $(this).text();

                    $(".pagination .prev-arrow").attr("href", `#${pageNow}`);
                    $(".pagination .next-arrow").attr("href", `#${pageNow}`);

                    $(".page-number").removeClass("active");
                    $(`.page-number:contains(${pageNow})`).addClass("active");

                    showSingleProduct();
                    $("html").scrollTop(250);

                    //alert(pageNow);
                }

                $(".pagination").empty();
                creatPagination();
                switchPage();
                $(`.page-number:contains(${pageNow})`).addClass("active");

            });

            //往前一頁
            $(".pagination .prev-arrow").click(function () {
                if (pageNow != 1) {
                    $(`.pagination .page-number[href="#${pageNow - 1}"]`).trigger("click");
                }
            });

            //往後一頁
            $(".pagination .next-arrow").click(function () {
                if (pageNow != maxPage()) {
                    $(`.pagination .page-number[href="#${Number(pageNow) + 1}"]`).trigger("click");
                }
            });
        }

        $(function () {

            //顯示首頁產品清單
            $(".single-product-list .single-product:gt(5)").hide();
            //生成翻頁按鈕
            creatPagination();
            $(`.page-number:contains(${pageNow})`).addClass("active");
            //綁定換頁功能
            switchPage();

            //改變每頁要顯示的產品個數
            $("select.per-page").change(function () {
                perPageNumber = $(this).val();

                //同步所有的select
                $("div.per-page ul li").removeClass("selected");
                $(`div.per-page ul li[data-value=${perPageNumber}]`).addClass("selected");
                $("select.per-page").val(perPageNumber);
                $("div.per-page span.current").text($(`select.per-page option[value=${perPageNumber}]:first`).text());

                //重新輸出清單
                $(".pagination").empty();
                pageNow = 1;
                creatPagination();
                switchPage();
                $(`.page-number:contains(${pageNow})`).addClass("active");
                $(this).attr("selected", true);
                showSingleProduct();

                //滾輪至適當高度
                $("html").scrollTop(250);
            });

        });

    </script>

</asp:Content>

