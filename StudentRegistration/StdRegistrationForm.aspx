<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StdRegistrationForm.aspx.cs" Inherits="StudentRegistration.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 100px;
        }
        .style3
        {
            width: 97px;
            font-weight: bold;
        }
        .style4
        {
            font-weight: bold;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 122px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            List of courses - 3rd year CS :</h1>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <strong>Module</strong></td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
                    style="font-weight: 700" 
                    >
                    <asp:ListItem>-- CODE --</asp:ListItem>
                    <asp:ListItem>I3301</asp:ListItem>
                    <asp:ListItem>I3302</asp:ListItem>
                    <asp:ListItem>I3303</asp:ListItem>
                    <asp:ListItem>I3304</asp:ListItem>
                    <asp:ListItem>I3305</asp:ListItem>
                    <asp:ListItem>I3306</asp:ListItem>
                    <asp:ListItem>I3307</asp:ListItem>
                    <asp:ListItem>I3308</asp:ListItem>
                    <asp:ListItem>I3330</asp:ListItem>
                    <asp:ListItem>I3332</asp:ListItem>
                    <asp:ListItem>I3333</asp:ListItem>
                    <asp:ListItem>I3340</asp:ListItem>
                    <asp:ListItem>I3350</asp:ListItem>
                </asp:ListBox>
            </td>
            <td class="style5">
                <strong>&nbsp;Number of credits</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                    style="font-style: italic"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Nb of credits shd be between 3 and 5" ForeColor="Red" 
                    MaximumValue="5" MinimumValue="3" style="font-style: italic" 
                    Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Add" 
                    style="font-weight: 700" Text="Add" />
            </td>
            <td class="style5">
                <strong>Total number of credits</strong></td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Blue" 
                    style="font-weight: 700; font-style: italic" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
    <h1>
        Summary :</h1>
    <table class="style1">
        <tr>
            <td class="style3">
                Course</td>
            <td class="style6">
                <asp:ListBox ID="ListBox2" runat="server" CssClass="style4" 
                    SelectionMode="Multiple">
                    <asp:ListItem>-- CODE --</asp:ListItem>
                </asp:ListBox>
            </td>
            <td style="text-align: center">
                <asp:Button ID="Button2" runat="server" CssClass="style4" Text="Delete" 
                    onclick="Del" />
            </td>
            <td style="text-align: left">
                <asp:Button ID="Button3" runat="server" CssClass="style4" Text="Delete All" 
                    onclick="DelAll" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td style="text-align: center">
                <asp:Button ID="Button4" runat="server" CssClass="style4" Text="MoveUp" 
                    onclick="moveUp" />
            </td>
            <td style="text-align: left">
                <asp:Button ID="Button5" runat="server" CssClass="style4" Text="MoveDown" 
                    onclick="moveDown" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
