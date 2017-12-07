﻿<%@ Page Title="Registro" Language="C#" MasterPageFile="~/MaestraWeb.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MusebeWEBFinal.Register" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<style>
				body {
					background-color: black;
					margin: 0;
				}

				.topnav {
					overflow: hidden;
					background-color: #333;
				}

					.topnav a {
						float: left;
						display: block;
						color: #f2f2f2;
						text-align: center;
						padding: 14px 16px;
						text-decoration: none;
						font-size: 17px;
					}

						.topnav a:hover {
							background-color: #ddd;
							color: black;
						}

					.topnav .icon {
						display: none;
					}

				@media screen and (max-width: 600px) {
					.topnav a:not(:first-child) {
						display: none;
					}

					.topnav a.icon {
						float: right;
						display: block;
					}
				}

				@media screen and (max-width: 600px) {
					.topnav.responsive {
						position: relative;
					}

						.topnav.responsive .icon {
							position: absolute;
							right: 0;
							top: 0;
						}

						.topnav.responsive a {
							float: none;
							display: block;
							text-align: left;
						}
				}
			</style>
			<div class="topnav" id="myTopnav">
				<a href="Index.aspx">Home</a><a href="Servicios.aspx">Servicios</a> <a href="ProductosWeb.aspx">Productos</a> <a href="Somos.aspx">&iquest;Quienes Somos?</a> <a href="Contacto.aspx">Contactanos</a> <a href="Login.aspx">Login</a><a href="Register.aspx">Registrarme</a> <a href="javascript:void(0);" style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
			</div>
			<div class="pull-right">
				<p style="color: white" class="d-inline pull-right">
					&#9742;9381180887
				</p>
				<br />
				<p style="color: white" class="d-inline pull-right">
					&#9993;ventas@musebe.com.mx
				</p>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">Registro</div>
				<div class="panel-body">

					<div class="row">
						<div class="col-md-3">
							<dx:ASPxTextBox ID="txtNombre" runat="server" CssClass="form-control col-xs-3" Caption="Primer Nombre:">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>
						</div>
						<div class="col-md-3">
								<dx:ASPxTextBox ID="txtSegundoNombre" runat="server" CssClass="form-control col-xs-3" Caption="Segundo Nombre:">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>
						</div>
						<div class="col-md-3">
							<dx:ASPxTextBox ID="txtApellidoPaterno" runat="server" CssClass="form-control col-xs-3" Caption="Apellido Paterno:">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
								<ValidationSettings SetFocusOnError="True" ValidationGroup="Guardar">
									<RequiredField IsRequired="True" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						</div>
						<div class="col-md-3">
							<dx:ASPxTextBox ID="txtApellidoMaterno" runat="server" CssClass="form-control col-xs-3" Caption="Apellido Materno:" >
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>							
						</div>

					</div>
					<div class="row">
						<div class="col-md-3">
							<dx:ASPxTextBox ID="txtCorreo" runat="server" CssClass="form-control col-xs-3" Caption="E-mail:">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>
						</div>
						<div class="col-md-3">
							<dx:ASPxTextBox ID="txtTelefono" runat="server" CssClass="form-control col-xs-3" Caption="Telefono de contacto:">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>
						</div>
						<div class="col-md-3">
							<%--<dx:ASPxTextBox ID="txtUsuario" runat="server" CssClass="form-control col-xs-3" Caption="Folio:" ReadOnly="True">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
							</dx:ASPxTextBox>--%>
						</div>
						<div class="col-md-3">
							<%--<dx:ASPxTextBox ID="txtMargen" runat="server" Caption="Margen de Ganancia" CssClass="form-control col-xs-3" HorizontalAlign="Center" NullText="Margen de Ganancia">
								<CaptionSettings HorizontalAlign="Left" Position="Top" VerticalAlign="Top" />
								<ValidationSettings SetFocusOnError="True" ValidationGroup="Agregar">
									<RequiredField IsRequired="True" />
								</ValidationSettings>
								<FocusedStyle BackColor="#FFFF66" HorizontalAlign="Center" Wrap="True">
								</FocusedStyle>
							</dx:ASPxTextBox>--%>
						</div>
					</div>
					<asp:LinkButton ID="lnkGuardar" runat="server" CssClass="btn btn-primary" OnClick="lnkGuardar_Click">Registrarme</asp:LinkButton>
					<asp:LinkButton ID="lnkCancelar" runat="server" CssClass="btn btn-default" OnClick="lnkCancelar_Click">Cancelar</asp:LinkButton>
					<asp:LinkButton ID="LinkButton1" runat="server">Olvide mi contraseña</asp:LinkButton>
				</div>
			</div>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>
