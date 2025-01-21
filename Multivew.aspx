<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multivew.aspx.cs" Inherits="b_lecture.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MultiView Example</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        form {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin: 10px 0 5px;
        }
        input, select, textarea, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }
        button {
            background-color: #007BFF;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
        }
        .buttons button {
            width: 48%;
        }
        .summary {
            background-color: #f9f9f9;
            padding: 15px;
            border: 1px solid #dddddd;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <!-- View 1: Student Information -->
            <asp:View ID="view1" runat="server">
                <h3>STUDENT INFORMATION</h3>
                <label for="TextBox1">Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="#333300" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </label>
                <asp:TextBox ID="TextBox1" runat="server" />

                <label for="DropDownList1">Gender:</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Select" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                </asp:DropDownList>

                <label for="TextBox2">Address:</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" />

                <label for="TextBox3">Degree:</label>
                <asp:TextBox ID="TextBox3" runat="server" />

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
            </asp:View>

            <!-- View 2: Contact Information -->
            <asp:View ID="view2" runat="server">
                <h3>CONTACT INFORMATION</h3>
                <label for="TextBox4">Email:</label>
                <asp:TextBox ID="TextBox4" runat="server" />

                <label for="TextBox5">Contact No:</label>
                <asp:TextBox ID="TextBox5" runat="server" />

                <div class="buttons">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Previous" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Next" />
                </div>
            </asp:View>

            <!-- View 3: Summary -->
            <asp:View ID="view3" runat="server">
                <h3>SUMMARY</h3>
                <div class="summary">
                    <asp:Label ID="LabelSummary" runat="server" Text="" />
                </div>
                <div class="buttons">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Previous" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="OK" />
                </div>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
