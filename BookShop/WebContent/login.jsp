<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" 
content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" />
<SCRIPT type="text/javascript" src="js/login.js">

</SCRIPT>
</head>
<body><s:debug></s:debug>
		<!-- 最外层的大表格 -->
		<table cellpadding="0" cellspacing="0" border="0" width="100%"
			height="100%">

			<tbody>
				<tr>
					<td>
						<!-- 显示页面信息的表格 -->
						<TABLE height=800 cellSpacing=0 cellPadding=0 width=777
							align=center bgColor=#ffffff border=0>
							<tbody>
								<tr>
									<td valign="top">





										<!--网站头部内容(包括导航菜单和Logo图片)-->
										<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
											<TBODY>
												<TR>
													<!--绿色背景-->
													<TD bgColor=#81cf00 colSpan=2 height=6></TD>
												</tr>
												<tr>
													<!--站点Logo图片-->
													<td align=middle width="27%" height=70>
														<IMG height=56 src="images/index_03.gif" width=185>
													</td>
													<!-- 站点Logo图片 -->

													<!-- 导航信息 -->
													<TD vAlign=top width="73%">
														<TABLE height=35 cellSpacing=0 cellPadding=0 width="100%"
															border=0>
															<TBODY>
																<TR align=middle>
																	<TD vAlign=bottom height=22>
																		<A href="&#20027;&#39029;.html">首页</A>
																	</TD>
																	<TD vAlign=top width=1 rowSpan=2>
																		<IMG height=36 src="images/Nav_separate.gif" width=1>
																	</TD>
																	<TD vAlign=bottom>
																		<A href="&#26032;&#20070;&#19978;&#26550;.html">新书上架</A>
																	</TD>
																	<TD vAlign=top width=1 rowSpan=2>
																		<IMG height=36 src="images/Nav_separate.gif" width=1>
																	</TD>
																	<TD vAlign=bottom>
																		<A href="&#22270;&#20070;&#20998;&#31867;.html">图书分类</A>
																	</TD>
																	<TD vAlign=top width=1 rowSpan=2>
																		<IMG height=36 src="images/Nav_separate.gif" width=1>
																	</TD>
																	<TD vAlign=bottom>
																		<A href="car.jsp">购物车</A>
																	</TD>
																	<TD vAlign=top width=1 rowSpan=2>
																		<IMG height=36 src="images/Nav_separate.gif" width=1>
																	</TD>
																	<TD vAlign=bottom>
																		<A href="&#23450;&#21333;&#26597;&#35810;.html">订单查询</A>
																	</TD>
																	<TD vAlign=top width=1 rowSpan=2>
																		<IMG height=36 src="images/Nav_separate.gif" width=1>
																	</TD>
																	<TD vAlign=bottom>
																		<A href="&#38144;&#21806;&#25490;&#34892;.html">销售排行</A>
																	</TD>

																</TR>
																<TR align=middle>
																	<TD height=13>
																		<A href="&#20027;&#39029;.html">Index</A>
																	</TD>
																	<TD>
																		<A href="&#26032;&#20070;&#19978;&#26550;.html">New Books</A>
																	</TD>
																	<TD>
																		<A href="&#22270;&#20070;&#20998;&#31867;.html">Book Sort</A>
																	</TD>
																	<TD>
																		<A href="&#36141;&#29289;&#36710;.html">Shopping Bag</A>
																	</TD>
																	<TD>
																		<A href="&#23450;&#21333;&#26597;&#35810;.html">Order Search</A>
																	</TD>
																	<TD>
																		<A href="&#38144;&#21806;&#25490;&#34892;.html">Sell Sort</A>
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
													<!-- 导航信息 -->
												</tr>














												<!--网站Logo(小女孩)-->
												<TR align=right>
													<TD colSpan=2 height=70>
														<IMG height=244 src="images/index_06.jpg" width=770>
													</TD>
												</TR>
												<!-- 网站Logo(小女孩) -->
												<TR align=right>
													<TD colSpan=2 height=17>&nbsp;
														

													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<!-- Logo部分结束 -->



























										<!--网页内容部分-->
										<TABLE height=330 cellSpacing=0 cellPadding=0 width="100%"
											border=0>

											<tbody>
												<tr>
													<!--左边内容部分，占26%的宽度-->
													<td valign="top" width="26%">
														<!--用户登录表单-->
														<FORM name="form1" action="" method="post">
															<TABLE height=99 cellSpacing=0 cellPadding=0 width="100%"
																border=0>
																<TBODY>
																	<TR>
																		<TD width="8%">&nbsp;
																			

																		</TD>
																		<TD vAlign=top width="92%"
																			background=images/index_09.gif height=112>
																			  <TABLE cellSpacing=0 cellPadding=0 width="100%"
																				border=0>
																				<TBODY>
																					<TR>
																						<TD width="8%" height=20>&nbsp;
																							

																						</TD>
																						<TD width="81%">&nbsp;
																							

																						</TD>
																						<TD width="11%">&nbsp;
																							

																						</TD>
																					</TR>
																					<TR>
																						<TD>&nbsp;
																							

																						</TD>
																						<TD align='middle' height='24'>
																							欢迎"<s:property value="#session.userInfo.trueName"/>"登录系统！
																						</TD>
																						<TD>&nbsp;
																							

																						</TD>
																					</TR>
																					<TR>
																						<TD>&nbsp;
																							

																						</TD>
																						<TD align='middle' height='24'>
																							
																						</TD>
																						<TD>&nbsp;
																							

																						</TD>
																					</TR>
																					<TR>
																						<TD>&nbsp;
																							

																						</TD>
																						<TD align=middle height=31>
																							
																						</TD>
																						<TD>&nbsp;
																							

																						</TD>
																					</TR>
																					<TR>
																						<TD>&nbsp;
																							

																						</TD>
																						<TD align=middle>&nbsp;
																							

																						</TD>
																						<TD>&nbsp;
																							

																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																				
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</FORM>
														<!-- 登录表单 -->


















														<!--滚动公告部分-->
														<TABLE height=55 cellSpacing=0 cellPadding=0 width="100%"
															border=0>
															<TBODY>
																<TR>
																	<TD align=right colSpan=2>
																		<IMG height=49 src="images/index_14.gif" width=185>
																	</TD>
																</TR>
																<TR>
																	<TD width="14%">&nbsp;
																		

																	</TD>
																	<TD class=tableBorder_B vAlign=top width="86%"
																		height=100>
																		<MARQUEE onmousemove=this.stop()
																			onmouseout=this.start() scrollAmount=1 scrollDelay=1
																			direction=up height=100>
																			<TABLE height=21 cellSpacing=0 cellPadding=0
																				width="100%" border=0>
																				<TBODY>
																					<TR>
																						<TD>
																							&nbsp;&nbsp;&nbsp;&nbsp;在圣诞节来临之际，本书店为答解新老朋友的，特举办购物有奖活动！
																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																			<TABLE height=21 cellSpacing=0 cellPadding=0
																				width="100%" border=0>
																				<TBODY>
																					<TR>
																						<TD>
																							购物有奖，快快行动吧！
																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</MARQUEE>
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
														<!-- 滚动公告 -->












														<!--投票部分-->
														<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
															<TBODY>
																<TR>
																	<TD align=right colSpan=2 height=50>
																		<IMG height=50 src="images/index_18.gif" width=185>
																	</TD>
																</TR>
																<TR>
																	<TD width="14%">&nbsp;
																		

																	</TD>
																	<TD width="86%" height=27>
																		您需要哪方面的书籍？
																	</TD>
																</TR>
																<TR>
																	<TD>&nbsp;
																		

																	</TD>
																	<TD vAlign=top height=100>
																		<FORM name=form3 action=# method=post>
																			<TABLE height=151 cellSpacing=0 cellPadding=0
																				width="90%" align=center border=0>
																				<TBODY>
																					<TR>
																						<TD>
																							<INPUT id="r1" class=noborder type=radio CHECKED
																								value=实例类 name=optionname>
																							<span onClick="form3.r1.checked=true" style="cursor:hand ">实例类</span>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<INPUT id="r2" class=noborder type=radio value=教程类
																								name=optionname>
																							<span onClick="form3.r2.checked=true" style="cursor:hand ">教程类</span>																							
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<INPUT id="r3" class=noborder type=radio value=手册类
																								name=optionname>
																							<span onClick="form3.r3.checked=true" style="cursor:hand ">手册类</span>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<INPUT id="r4" class=noborder type=radio value=经验技巧类
																								name=optionname>
																							<span onClick="form3.r4.checked=true" style="cursor:hand ">经验技巧类</span>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<INPUT class=btn_grey type=button value=投票 onClick="window.location.href='投票结果.html'"
																								name=Submit7>
																							<INPUT class=btn_grey type=button value=查看结果 onClick="window.location.href='投票结果.html'"
																								name=Submit8>
																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</FORM>
																	</TD>
																</TR>
															</TBODY>
														</TABLE>

														<!-- 投票部分 -->












														<!--左边内容和中间内容的分隔线-->
													<TD vAlign=top width=5 background=images/Cen_separate.gif></TD>
















													<!--内容主体部分-->
													<TD vAlign=top width="73%">


														<TABLE height=272 cellSpacing=0 cellPadding=0 width="100%"
															border=0>
															<TBODY>










																<!--搜索引擎-->
																<TR>
																	<TD background=images/index_10.gif colSpan=3 height=52>
																		<FORM name=form2 action=# method=post>
																			<TABLE height=23 cellSpacing=0 cellPadding=0
																				width="100%" border=0>
																				<TBODY>
																					<TR>
																						<TD>&nbsp;
																							
																						</TD>
																						<TD>&nbsp;
																							
																						</TD>
																						<TD>&nbsp;
																							
																						</TD>
																					</TR>
																					<TR>
																						<TD width="15%">&nbsp;
																							
																						</TD>
																						<TD width="67%">
																							请输入书名：
																							<INPUT class=txt_grey size=48 name=bookkey>
																						</TD>
																						<TD width="18%">
																							<INPUT class=btn_grey type=submit value=搜索
																								name=search>
																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</FORM>
																	</TD>
																</TR>
																<!-- 搜索引擎 -->




























																<!--显示图书信息(三行两列)-->
																<TR>
																	<TD vAlign=top width="73%" height=220>
																		<TABLE height=126 cellSpacing=0 cellPadding=0
																			width="100%" border=0>
																			<TBODY>

																				<s:iterator value="listBooks" var="books">
																					<TR>
																					<TD>
																						<TABLE height=123 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD align=middle width="43%">
																										<a href="&#22270;&#20070;&#20449;&#24687;.html"><IMG src="images/JSPgcyyysj.gif"
																											width=76 height=110 border="0"></a>
																									</TD>
																									<TD width="57%">
																										<TABLE height=119 cellSpacing=0 cellPadding=0
																											width="100%" border=0>
																											<TBODY>
																												<TR>
																													<TD>
																														<s:property value="#books.bookName"/>
																													</TD>
																												</TR>
																												<TR>
																													<TD>
																														<s:property value="#books.publisher"/>
																													</TD>
																												</TR>
																												<TR>
																													<TD>
																														作者：<s:property value="#books.author"/>
																													</TD>
																												</TR>
																												<TR>
																													<TD>
																														定价：<s:property value="#books.price"/>（元）
																													</TD>
																												</TR>
																												<TR>
																													<TD align=middle>
																														<INPUT class=btn_grey type=submit value=查看
																															name=Submit6 onClick="window.location.href='图书信息.html'">
																													</TD>
																												</TR>
																												<TR>
																													<TD align=middle>
																														<INPUT class=btn_grey type="button" value="添加到购物车"
																															name=Submit6 onClick="addCar(<s:property value='#books.id'/>);">
																													</TD>
																												</TR>
																											</TBODY>
																										</TABLE>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</td>







																					
																				</tr>
																				
																				</s:iterator>
					
																			</TBODY>
																		</TABLE>
																	</td>




																	<!--分隔条-->
																	<TD width=5 background=主页_files/Cen_separate.gif>&nbsp;
																		
																	</TD>






																	<!-- 最右边一列 -->
																	<TD vAlign=top>
																		<!-- 新书上架 -->
																		<TABLE height=55 cellSpacing=0 cellPadding=0
																			width="100%" border=0>
																			<TBODY>
																				<TR>
																					<TD align=right>
																						<IMG height=46 src="images/index_12.gif" width=161>
																					</TD>
																				</TR>
																				<TR>
																					<TD class=tableBorder_B vAlign=top width="86%"
																						height=100>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="http://localhost:8080/BookSupermarket/book_detail.jsp?ISBN=7-111-17275-2">JSP信息系统开发实例精选</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="http://localhost:8080/BookSupermarket/book_detail.jsp?ISBN=7-115-13705-6">Visual
																											FoxPro管理信息系统完整项目实例剖析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="http://localhost:8080/BookSupermarket/book_detail.jsp?ISBN=7-115-13704-8">PowerBuilder
																											管理信息系统完整项目实例剖析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="http://localhost:8080/BookSupermarket/book_detail.jsp?ISBN=7-115-13703-X">Visual
																											Basic 管理信息系统完整项目实例剖析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="http://localhost:8080/BookSupermarket/book_detail.jsp?ISBN=7-115-13702-1">Visual
																											C＋＋ 管理信息系统完整项目实例剖析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																		<!-- 新书上架 -->




																		<!-- 销售排行 -->
																		<TABLE height=55 cellSpacing=0 cellPadding=0
																			width="100%" border=0>
																			<TBODY>
																				<TR>
																					<TD align=right>
																						<IMG height=48 src="images/index_16.gif" width=161>
																					</TD>
																				</TR>
																				<TR>
																					<TD class=tableBorder_B vAlign=top width="86%"
																						height=100>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="#">JSP工程应用与项目实践</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="#">ASP工程应用与项目实践</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="#">Visual
																											Basic数据库开发实例解析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="#">ASP数据库开发实例解析</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																						<TABLE height=21 cellSpacing=0 cellPadding=0
																							width="100%" border=0>
																							<TBODY>
																								<TR>
																									<TD width="9%">
																										<IMG height=13 src="images/greendot.gif"
																											width=11>
																									</TD>
																									<TD
																										style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"
																										width="91%">
																										<A
																											href="#">Visual
																											foxpro数据库开发关键技术与实例应用</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																		<!-- 销售排行 -->












																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<!--网页内容部分-->



















										<!-- 页脚部分 -->
										<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
											<TBODY>
												<TR>
													<TD>&nbsp;
														
													</TD>
												</TR>
												<TR>
													<TD bgColor=#83cc10 height=5></TD>
												</TR>
												<TR>
													<TD align=middle>
														<TABLE height=78 cellSpacing=-2 cellPadding=-2
															width="100%" align=center border=0>
															<TBODY>
																<TR>
																	<TD width=124 height=13>&nbsp;
																		
																	</TD>
																	<TD colSpan=3 height=13>
																		<DIV align=center></DIV>
																	</TD>
																	<TD width=141>&nbsp;
																		
																	</TD>
																</TR>
																<TR>
																	<TD width=124 height=13>&nbsp;
																		
																	</TD>
																	<TD align=middle colSpan=3 height=13>
																		<A
																			href="后台登录.html">网上图书超市后台登录</A>客户服务热线：0516
																		- 85629999 85628888
																	</TD>
																	<TD width=141>&nbsp;
																		
																	</TD>
																</TR>
																<TR>
																	<TD colSpan=2 height=15>&nbsp;
																		
																	</TD>
																	<TD vAlign=bottom width=464>
																		<DIV align=center>
																			CopyRight &copy; 2008 www.zbaccp.com 
																		</DIV>
																	</TD>
																	<TD colSpan=2>&nbsp;
																		
																	</TD>
																</TR>
																<TR>
																	<TD colSpan=2>&nbsp;
																		
																	</TD>
																	<TD align=middle>
																		本站请使用IE6.0或以上版本 1024*768为最佳显示效果
																	</TD>
																	<TD colSpan=2>&nbsp;
																		
																	</TD>
																</TR>
																<TR>
																	<TD colSpan=2 height=15>&nbsp;
																		
																	</TD>
																	<TD align=middle>&nbsp;
																		
																	</TD>
																	<TD colSpan=2>&nbsp;
																		
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<!-- 页脚部分 -->







									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<!-- 显示页面信息的表格 -->
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<!-- 最外层的大表格 -->



	</BODY>
</html>