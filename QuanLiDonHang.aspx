﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="QuanLiDonHang.aspx.cs" Inherits="Website.QuanLiDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="server">
    <div class="leftthongtin">
        <table style="width: 100%; height: 178px;">
            <tr>
                <td class="tieude phantrang" style="height: 43px"><strong>Quản lí tài khoản</strong></td>
            </tr>
            <tr>
                <td style="text-align: left;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hpThongTin" runat="server" NavigateUrl="~/QuanLiThongTin.aspx">Thông tin tài khoản</asp:HyperLink>
                </td>
            </tr>
            
            <tr>
                <td style="text-align: left;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hpDoiMK" runat="server" NavigateUrl="~/DoiMatKhau.aspx">Đổi Mật Khẩu</asp:HyperLink>
                </td>
            </tr>
            
            <tr>
                <td style="height: 28px; text-align: left;" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hpDonHang" runat="server" NavigateUrl="~/QuanLiDonHang.aspx">Quản lí giỏ hàng</asp:HyperLink>
                </td>
            </tr>
            
            <tr>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hpBaiViet" runat="server" NavigateUrl="~/QuanLiBaiViet.aspx">Quản lí bài viết</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <table style="width:100%">
                <tr>
                    <td class="text-center">
                        <h1><strong>DANH SÁCH ĐƠN HÀNG</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="text-left">
                            <asp:GridView ID="gvBlog" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaDH" OnPageIndexChanging="gvBlog_PageIndexChanging" Width="100%" CssClass="fixcss">
                                <Columns>
                                    <asp:BoundField DataField="MaDH" HeaderText="Mã Đơn Hàng" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NgayLapDH" HeaderText="Ngày Lập ĐH" DataFormatString="{0:dd/MM/yyyy}" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" ><ItemStyle CssClass="gvBlog" Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField  DataField="DiaChi" HeaderText="Địa Chỉ" >
                                        <ItemStyle CssClass="gvBlog" Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SDT" HeaderText="SDT" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PTTT" HeaderText="Phương Thức Thanh Toán" />
                                    <asp:BoundField DataField="TrinhTrang" HeaderText="Trình Trạng" />
                                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                                    <asp:TemplateField HeaderText="Xem chi tiết">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Anh/Icon/Edit.png" NavigateUrl='<%# "~/ChiTietDonHang.aspx?MaDH="+Eval("MaDH") %>'>Sửa</asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
            </table>
</asp:Content>
