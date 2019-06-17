<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="TackingOrder.aspx.cs" Inherits="TackingOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start My Account -->
    <div class="container">
        <div class="order-tracking">
            <p>請輸入您的帳號與密碼，即可查詢最近一筆交易紀錄。</p>
            <form runat="server">
                <asp:TextBox ID="txtTackuser" runat="server" CssClass="common-input mt-20" placeholder="UserName" onblur="this.placeholder = 'UserName'" />
                <asp:TextBox ID="txtTackpass" runat="server" CssClass="common-input mt-20" placeholder="Password" onblur="this.placeholder = 'Password'" TextMode="Password" />
                <asp:Button ID="Button1" runat="server" Text="Track Order" CssClass="view-btn btn-pink mt-20" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="" />
            </form>
        </div>
    </div>
    <!-- End My Account -->
    <hr />
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
                                <div class="list-row d-flex justify-content-between" style="display: flex">
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
                                <asp:Label ID="Label2" runat="server" Text="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

