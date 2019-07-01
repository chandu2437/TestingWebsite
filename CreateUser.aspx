<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="Usernamelbl" runat="server">Username:</asp:Label></td>
            <td><asp:TextBox ID="Usernametb" runat="server" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Surnamelbl" runat="server">Surname:</asp:Label></td>
            <td><asp:TextBox ID="Surnametb" runat="server" AutoCompleteType="LastName" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Firstnameldl" runat="server">Firstname:</asp:Label></td>
            <td><asp:TextBox ID="Firstnametb" runat="server" AutoCompleteType="FirstName" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Lastnamelbl" runat="server">Lastname:</asp:Label></td>
            <td><asp:TextBox ID="Lastnametb" runat="server" AutoCompleteType="LastName" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="genderlbl" runat="server">Gender:</asp:Label></td>
            <td><asp:RadioButtonList ID="genderrd" runat="server" RepeatColumns="2">
                <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                <asp:ListItem Text="Female" Value="1"></asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Agelbl" runat="server">Age:</asp:Label></td>
            <td><asp:TextBox ID="Agetb" runat="server" BorderStyle="None" TextMode="Number"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Occupationlbl" runat="server">Occupation:</asp:Label></td>
            <td><asp:TextBox ID="Occupationtb" runat="server" AutoCompleteType="JobTitle" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Addresslbl" runat="server">Address:</asp:Label></td>
            <td><asp:TextBox ID="Addresstb" runat="server" TextMode="MultiLine" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Statelbl" runat="server">State:</asp:Label></td>
            <td><asp:TextBox ID="statetb" runat="server" AutoCompleteType="HomeState" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="citylbl" runat="server">City:</asp:Label></td>
            <td><asp:TextBox ID="citytb" runat="server" AutoCompleteType="HomeCity" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Pincodelbl" runat="server">PinCode:</asp:Label></td>
            <td><asp:TextBox ID="Pincodetb" runat="server" AutoCompleteType="HomeZipCode" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Advpaidlbl" runat="server">Advance Paid:</asp:Label></td>
            <td><asp:TextBox ID="Advpaidtb" runat="server" TextMode="Number" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Rentpaidlbl" runat="server">Rent Paid:</asp:Label></td>
            <td><asp:TextBox ID="Rentpaidtb" runat="server" TextMode="Number" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Dateofjoininglbl" runat="server">Joining Date:</asp:Label></td>
            <td><asp:TextBox ID="Dateofjoiningtb" runat="server" TextMode="Date" BorderStyle="None"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="identificationtypelbl" runat="server">Identification Type:</asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlIdentificationtype" runat="server" OnSelectedIndexChanged="ddlIdentificationtype_SelectedIndexChanged">
                    <asp:ListItem Text="----Select ID type----" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Aadhaar Card" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Driving License" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="idntcatnnbrlbl" runat="server">Identification Number:</asp:Label></td>
            <td><asp:TextBox ID="idntcatnnbrtb" runat="server" BorderStyle="None"></asp:TextBox></td>
        </tr>
    </table>
    <div>
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
    </div>
</asp:Content>
