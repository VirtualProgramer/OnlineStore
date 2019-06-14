<%@ Page Title="" Language="C#" MasterPageFile="~/ProdBacktages.master" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="UpdateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb" style="margin-top: 0">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center justify-content-start">
                        <a href="index.html">Home<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                        <a href="cart.html">Shopping Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    <form action="#" runat="Server">
        <!-- Start My Account -->
        <div class="container" style="margin-bottom: 100px">
            <div class="row">
                <div class="col-md-6">
                    <div class="login-form">
                        <h3 class="billing-title text-center">Before</h3>
                        <p class="text-center mt-40 mb-30">Welcome back! Sign in to your account </p>
                        <asp:FormView CssClass="w-100" runat="server" DataSourceID="ObjectDataSource1">
                            <ItemTemplate>
                                <asp:Label ID="IdLabel" class="update-before-label" runat="server" Text='<%# Bind("Id") %>' />
                                <asp:Label ID="NameLabel" class="update-before-label" runat="server" Text='<%# Bind("Name") %>' />
                                <asp:Label ID="PriceLabel" class="update-before-label" runat="server" Text='<%# Bind("Price") %>' />
                                <asp:Label ID="AmountLabel" class="update-before-label" runat="server" Text='<%# Bind("Amount") %>' />
                                <asp:Label ID="ImageFileNameLabel" class="update-before-label" runat="server" Text='<%# Bind("ImageFileName") %>' />
                                <asp:Label class="update-before-label" Text='<%# Bind("CategoryName") %>' runat="server" ID="CategoryNameLabel" />
                                <asp:Label class="update-before-label" Text='<%# Bind("TargetCustomer") %>' runat="server" ID="TargetCustomerLabel" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:Button class="view-btn color-2 mt-20 w-100" ID="Button1" runat="server" Text="Cancel" PostBackUrl="~/ProductView.aspx" />
                        <%--<button class="view-btn color-2 mt-20 w-100"><span>Cancel</span></button>--%>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="register-form">
                        <h3 class="billing-title text-center">After</h3>
                        <p class="text-center mt-40 mb-30">Create your very own account </p>
                        <asp:FormView ID="FormView1" CssClass="w-100" runat="server" DataKeyNames="Id" DataSourceID="ObjectDataSource1" DefaultMode="Edit">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" class="update-after-label common-input" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                <asp:TextBox Text='<%# Bind("Name") %>' placeholder="Product name*" class="update-after-label common-input" runat="server" ID="NameTextBox" />
                                <asp:TextBox Text='<%# Bind("Price") %>' placeholder="Price*" class="update-after-label common-input" runat="server" ID="PriceTextBox" />
                                <asp:TextBox Text='<%# Bind("Amount") %>' placeholder="Amount*" class="update-after-label common-input" runat="server" ID="AmountTextBox" />
                                <asp:TextBox Text='<%# Bind("ImageFileName") %>' placeholder="Image file name*" class="update-after-label common-input" runat="server" ID="ImageFileNameTextBox" />
                                <asp:TextBox Text='<%# Bind("CategoryName") %>' placeholder="Category*" class="update-after-label common-input" runat="server" ID="CategoryNameTextBox" />
                                <asp:TextBox Text='<%# Bind("Price") %>' placeholder="Target Customer*" class="update-after-label common-input" runat="server" ID="TargetCustomerTextBox" />
                                <asp:LinkButton CssClass="view-btn color-2 mt-20 w-100 update-button" runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />
                                <%--<asp:LinkButton runat="server" Text="取消" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />--%>
                                <%--<button class="view-btn color-2 mt-20 w-100" runat="server" commandname="Update" id="UpdateButton" causesvalidation="True"><span>Update</span></button>--%>
                            </EditItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
        <!-- End My Account -->
    </form>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="GetProduct" TypeName="ProductHandler" DataObjectTypeName="Product" UpdateMethod="UpdateProduct">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

