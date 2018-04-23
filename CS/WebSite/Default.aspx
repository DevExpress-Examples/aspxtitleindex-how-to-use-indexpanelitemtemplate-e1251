<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxTitleIndex"
    TagPrefix="dxti" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <dxti:ASPxTitleIndex ID="ASPxTitleIndex1" runat="server" DataSourceID="AccessDataSource1" 
        GroupingField="Genre" TextField="Name" Width="524px">
            <IndexPanelItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Container.GroupValue.ToString() %>' 
                Font-Size='<%# FontUnit.Point(Container.GroupItemCount + 5) %>' 
                NavigateUrl='<%# Container.NavigateUrl %>'>
                </asp:HyperLink>
            </IndexPanelItemTemplate>
            <Columns>
                <dxti:Column>
                </dxti:Column>
                <dxti:Column>
                </dxti:Column>
            </Columns>
        </dxti:ASPxTitleIndex>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Data.mdb"
            SelectCommand="SELECT * FROM [Films]"></asp:AccessDataSource>
    </form>
</body>
</html>