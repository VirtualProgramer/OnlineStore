<%@ Page Title="" Language="C#" MasterPageFile="~/ProdBacktages.master" AutoEventWireup="true" CodeFile="ServerLogin.aspx.cs" Inherits="ServerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-6" id="logindiv">
        <div class="login-form ">
            <h3 class="billing-title text-center">登入</h3>
            <div class="imgcontainer">
                <img src="userimg.png" id="meimg" alt="Avatar" class="avatar">
                <p class="text-center mt-80 mb-40">歡迎登入後臺管理系統!</p>
            </div>
            
            <form runat="server">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="common-input" placeholder="請輸入您的帳號" />
                <asp:TextBox runat="server" ID="txtPassWord" CssClass="common-input" placeholder="請輸入您的密碼" TextMode="Password" />
                <%--<button runat="server" id="btnlogin" class="view-btn color-2 mt-20 w-100"><span>Login</span></button>--%>
                <asp:Button runat="server" ID="btnlogin" Text="Login"  CssClass="view-btn  btn-pink color-2 mt-20 w-100 " OnClick="btnlogin_Click" />
                <div class="mt-20 d-flex align-items-center justify-content-between">
                    <div class="d-flex align-items-center">
                        <input type="checkbox" class="pixel-checkbox" id="login-1"><label for="login-1">記住我的資訊</label>
                    </div>
                    <a href="#">忘記您的密碼了嗎?</a>
                </div>
            </form>
        </div>
    </div>
    <br />
</asp:Content>

