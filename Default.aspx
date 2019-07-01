<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>
<%@ Register Assembly="DropDownCheckBoxes" Namespace="Saplin.Controls" TagPrefix="asp" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" >Lookig For</asp:Label>
    <asp:RadioButtonList ID="rdgender" runat="server" OnSelectedIndexChanged="rdgender_SelectedIndexChanged">
        <asp:ListItem Value="0" Text="Male" ></asp:ListItem>
        <asp:ListItem Value="1" Text="Female"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="gentpginfo" runat="server">
                <h2>
                    Information for Gents Paying Guest
                </h2>
                <div>
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label  ID="noofvacancieslblgents" runat="server">No. of Vacancies:</asp:Label>
                                    <asp:Label ID="numbervacngents" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="shringavlgentslbl" runat="server">Sharing available:</asp:Label>
                                    <asp:Label ID="sharingavlgents" runat="server">5</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Pricelblgents" runat="server"></asp:Label>
                                    <asp:Label ID="pricegents" runat="server">Rs.5000</asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="ladiespginfo" runat="server">
                <h2>
                    Information for Ladies Paying Guest
                </h2>
                <div>
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label  ID="noofvacancieslblladies" runat="server">No. of Vacancies:</asp:Label>
                                    <asp:Label ID="numbervacnladies" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="shringavlladieslbl" runat="server">Sharing available:</asp:Label>
                                    <asp:Label ID="sharingavlladies" runat="server">3/5</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Pricelblladies" runat="server"></asp:Label>
                                    <asp:Label ID="priceladies" runat="server">Rs.4500/5000</asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="rdgender" EventName="SelectionChanged" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>