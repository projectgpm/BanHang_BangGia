<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemKH.aspx.cs" Inherits="KobePaint.Pages.KH_NCC.ThemKH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxFormLayout ID="formThemKH" ClientInstanceName="formThemKH" runat="server" Width="100%">
        <Items>
            <dx:LayoutGroup Caption="Thêm khách hàng mới" GroupBoxDecoration="HeadingLine" ColCount="2">
                <Items>
                    <dx:LayoutItem Caption="Mã khách hàng">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtMaKH" runat="server" Width="100%" Font-Bold="true" ForeColor="Blue">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:EmptyLayoutItem>
                    </dx:EmptyLayoutItem>
                    <dx:LayoutItem Caption="Loại khách hàng">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxComboBox ID="ccbLoaiKH" runat="server" Width="100%" DataSourceID="dsLoaiKH" TextField="TenLoaiKhachHang" ValueField="IDLoaiKhachHang" SelectedIndex="0">
                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                    if(s.GetSelectedIndex() == 0)
                                        {                                        
                                            formThemKH.GetItemByName('layoutitemMaST').SetVisible(false);
                                        }
                                        else
                                        {                                            
                                            formThemKH.GetItemByName('layoutitemMaST').SetVisible(true);
                                        }
                                    }" />
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="dsLoaiKH" runat="server" ConnectionString="<%$ ConnectionStrings:KobePaintConnectionString %>" SelectCommand="SELECT [IDLoaiKhachHang], [TenLoaiKhachHang] FROM [khLoaiKhachHang] WHERE DaXoa = 0"></asp:SqlDataSource>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Mã số thuế" Name="layoutitemMaST" ClientVisible="False">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtMaSoThue" runat="server" NullText="Nhập mã số thuế" Width="100%">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Tên khách hàng">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtTenKH" runat="server" Width="100%" NullText="Nhập tên khách hàng">
                                    <ValidationSettings Display="Dynamic" ErrorTextPosition="Bottom" ValidationGroup="checkInput">
                                        <RequiredField ErrorText="Nhập thông tin !!" IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Điện thoại">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtDienThoai" runat="server" Width="100%" NullText="Nhập số điện thoại">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Địa chỉ">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtDiaChi" runat="server" Width="100%">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="E-Mail">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxTextBox ID="txtEmail" runat="server" Width="100%">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Thông tin khác" ColSpan="2" Width="100%">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxMemo ID="txtGhiChu" runat="server" Rows="4" Width="100%">
                                </dx:ASPxMemo>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem ColSpan="2" HorizontalAlign="Center" ShowCaption="False" Width="100%">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="padding-right:10px;text-align:right;width:50%;">
                                            <dx:ASPxButton ID="btnLuu" runat="server" Text="Lưu" Width="100" OnClick="btnLuu_Click">
                                            </dx:ASPxButton>
                                        </td>
                                         <td style="padding-right:10px;width:110px;">
                                            <dx:ASPxButton ID="btnLapMoi" runat="server" Text="Lập mới" Width="100" BackColor="#d9534f" AutoPostBack="true" NavigateUrl="~/Pages/KhachHang/ThemKH.aspx">
                                                
                                            </dx:ASPxButton>
                                                        
                                        </td>
                                        <td>

                                            <dx:ASPxButton ID="btnTroVe" runat="server" Text="Trở về" AutoPostBack="true" PostBackUrl="~/Pages/KhachHang/DanhSachKH.aspx" >
                                                        </dx:ASPxButton>
                                        </td>
                                    </tr>
                                </table>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
        </Items>
    </dx:ASPxFormLayout>
    <asp:SqlDataSource ID="dsKhachHang" runat="server" ConnectionString="<%$ ConnectionStrings:KobePaintConnectionString %>" 
        InsertCommand="INSERT INTO khKhachHang(MaKhachHang, LoaiKhachHangID, HoTen, DiaChi, DienThoai, MaSoThue, GhiChu, Email,ThanhToan) VALUES (@MaKhachHang, @LoaiKhachHangID, @HoTen, @DiaChi, @DienThoai, @MaSoThue, @GhiChu, @Email,0)"
         SelectCommand="SELECT khKhachHang.* FROM khKhachHang">
        <InsertParameters>
            <asp:ControlParameter ControlID="formThemKH$txtMaKH" Name="MaKhachHang" PropertyName="Text" />
            <asp:ControlParameter ControlID="formThemKH$ccbLoaiKH" Name="LoaiKhachHangID" PropertyName="Value" />
            <asp:ControlParameter ControlID="formThemKH$txtEmail" Name="Email" PropertyName="Value" />
            <asp:ControlParameter ControlID="formThemKH$txtTenKH" Name="HoTen" PropertyName="Text" />
            <asp:ControlParameter ControlID="formThemKH$txtDienThoai" Name="DiaChi" PropertyName="Text" />
            <asp:ControlParameter ControlID="formThemKH$txtDiaChi" Name="DienThoai" PropertyName="Text" />
            <asp:ControlParameter ControlID="formThemKH$txtMaSoThue" Name="MaSoThue" PropertyName="Text" />
            <asp:ControlParameter ControlID="formThemKH$txtGhiChu" Name="GhiChu" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
