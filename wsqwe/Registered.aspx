<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Registered.aspx.cs" Inherits="Registered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-md-6" id="logindiv">
        <div class="register-form">
            <h3 class="billing-title text-center">註冊</h3>
            <p class="text-center mt-80 mb-40">幫自己建立一個專屬的帳戶吧! </p>

            <form runat="server">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="common-input" placeholder="請輸入要註冊的帳號" />
                <asp:TextBox runat="server" ID="txtPassWord" CssClass="common-input" TextMode="Password" placeholder="請幫自己想組密碼" />
                <asp:TextBox runat="server" ID="txtEmail" CssClass="common-input" placeholder="請輸入您常用的電子信箱" TextMode="Email" />
                <asp:TextBox runat="server" ID="txtPhone" CssClass="common-input" placeholder="請輸入您的手機號碼" MaxLength="10" TextMode="Phone" />
                <%--<asp:TextBox runat="server" ID="txtGender" CssClass="common-input" placeholder="Please enter your Gerder(Men/Woman)" />--%>
                <asp:RadioButtonList ID="RBL1" runat="server" CssClass="rdlist common-input"  Font-Size="12" RepeatDirection="Horizontal" ForeColor="White">
                    <asp:ListItem Value="1">男性</asp:ListItem>
                    <asp:ListItem Value="2">女性</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button runat="server" ID="btnlogin" Text="Register" CssClass="view-btn  btn-pink color-2 mt-20 w-100 " OnClick="btnlogin_Click" />

            </form>
        </div>
    </div>
    <br />
</asp:Content>

