<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	if (request.getMethod().equalsIgnoreCase("post")) {
		if (Integer.parseInt(request.getParameter("semester")) == 6) {
			String eno = request.getParameter("eno");
			LinkedHashMap<String, String> map = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rgpvresult", "root",
						"root");
				String query = "";
				PreparedStatement st = conn.prepareStatement(query);
				ResultSet rs = st.executeQuery("select * from result where eno = '" + eno + "'");
				while (rs.next()) {
					map = new LinkedHashMap<>();
					map.put("eno", rs.getString("eno"));
					map.put("name", rs.getString("name"));
					//eno, name, CS6001[T], CS6002[T], CS6003[T], CS6004[T], CS6005[T], CS6002[P], CS6003[P],
					//CS6004[P], CS6006[P], CS6007[P], CS6008[P], SGPA, CGPA
					map.put("CS6001[T]", rs.getString("CS6001[T]"));
					map.put("CS6002[T]", rs.getString("CS6002[T]"));
					map.put("CS6003[T]", rs.getString("CS6003[T]"));
					map.put("CS6004[T]", rs.getString("CS6004[T]"));
					map.put("CS6005[T]", rs.getString("CS6005[T]"));
					map.put("CS6002[P]", rs.getString("CS6002[P]"));
					map.put("CS6003[P]", rs.getString("CS6003[P]"));
					map.put("CS6004[P]", rs.getString("CS6004[P]"));
					map.put("CS6006[P]", rs.getString("CS6006[P]"));
					map.put("CS6007[P]", rs.getString("CS6007[P]"));
					map.put("CS6008[P]", rs.getString("CS6008[P]"));
					map.put("SGPA", rs.getString("SGPA"));
					map.put("CGPA", rs.getString("CGPA"));

				}
				conn.close();
			} catch (Exception e) {
				System.out.println("Exception :" + e);
			}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" language="javascript">
	function burstCache() {
		if (!navigator.onLine) {
			window.location = '~/NoAcess.aspx';
		}
	}
	burstCache();
</script>
<script type="text/javascript" src="Sem3_files/MultilineTextBox.js"></script>
</head>
<body
	style="margin-top: 0; margin-left: 0; margin-right: 0; margin-bottom: 0;">
	<form method="post" action="./MarkSheet_GS_BE.aspx" id="form1"
		enctype="multipart/form-data" autocomplete="off">



		<input name="csrfval" id="csrfval" value="1015162867" type="hidden">
			<table
				style="width: 100%; border: thin solid #CCC; font-family: Verdana; font-size: 7pt;"
				cellspacing="0" cellpadding="0" border="1">
				<tbody>
					<tr>
						<td style="width: 100%" align="center">
							<table style="width: 100%; border: thin solid #CCC;" border="0">
								<tbody>
									<tr>
										<td style="width: 10%"><img id="Image1"
											src="MarkSheet_files/RGPVlogo.gif" style="width: 70px;"></td>
										<td style="width: 90%; vertical-align: middle;"><span
											style="font-size: 16pt; color: #FF8400; font-family: Verdana"
											class="heading"> RAJIV GANDHI PROUDYOGIKI
												VISHWAVIDYALAYA, BHOPAL</span>&nbsp;<br>
												<p>
													<span class="subheading" style="font-size: 10pt">(University
														of Technology of Madhya Pradesh)</span><br> <br> <span
															style="background-color: GrayText; height: 100;"><span
																style="font-size: 8pt; font-family: Verdana"><img
																	alt="" src="Sem3_files/statement.jpg"></span><br></span>
												</p></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr style="font-size: 7pt">
						<td style="width: 100%">
							<div style="text-align: left">
								<table style="width: 100%" cellspacing="4" cellpadding="4"
									border="0">
									<tbody>
										<tr>
											<td colspan="6" style="width: 100%" align="center"><span
												id="lblExamSession" class="ResultHeading">EXAMINATION
													May-2019</span></td>
										</tr>
										<tr>
											<td style="width: 10%" class="ResultHeading">ROLL NO.</td>
											<td style="width: 1%">:</td>
											<td style="width: 60%"><span id="lblRollNo"><%=map.get("eno").toUpperCase()%></span></td>
											<td colspan="3"><span id="lblBranch">Bachelor of
													Engineering, Computer Science &amp; Engineering</span></td>
										</tr>
										<tr>
											<td style="width: 10%" class="ResultHeading">NAME</td>
											<td style="width: 1%">:</td>
											<td style="width: 60%"><span id="lblCandidateName"><%=map.get("name").toUpperCase()%>
											</span></td>
											<td style="width: 10%" class="ResultHeading">SEMESTER</td>
											<td style="width: 1%">:</td>
											<td style="width: 28%"><span id="lblSemester">VI</span></td>
										</tr>
										<tr>
											<td style="width: 10%" class="ResultHeading">INSTITUTE</td>
											<td style="width: 1%">:</td>
											<td style="width: 60%"><span id="lblInstt">Lakshmi
													Narain College of Technology</span></td>
											<td style="width: 10%" class="ResultHeading">STATUS</td>
											<td style="width: 1%">:</td>
											<td style="width: 28%"><span id="lblStatus">Regular</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr style="font-size: 7pt">
						<td style="width: 100%" align="center">

							<div id="Panel1" style="width: 100%;">

								<table
									style="font-size: 9pt; width: 100%; font-family: Verdana; border: thin solid #CCC;"
									cellspacing="1" cellpadding="1" border="1">
									<tbody>
										<tr>
											<td rowspan="2" style="width: 3%; text-align: center"
												class="ResultHeading"><span
												style="color: crimson; width: 3%; text-align: center;">CODE</span></td>
											<td rowspan="2" style="width: 41%; text-align: center"
												class="ResultHeading"><span style="color: crimson">SUBJECTS</span></td>
											<td colspan="1" style="text-align: center"
												class="ResultHeading"><span style="color: crimson">&nbsp;GRADING
													SYSTEM</span></td>
										</tr>
										<tr>
											<td style="width: 14%; text-align: center"
												class="ResultHeading"><span style="color: indianred"></span></td>
										</tr>
										<tr>
											<td rowspan="2" style="width: 15%; text-align: center"
												valign="top">

												<table style="font-size: 7pt" width="100%">

													<tbody>

														<tr>
															<td>&nbsp; &nbsp;&nbsp;<br> <br></td>

														</tr>

														<tr>
															<td>CS6001 [T]</td>
														</tr>

														<tr>
															<td>CS6002 [T]</td>
														</tr>

														<tr>
															<td>CS6003 [T]</td>
														</tr>

														<tr>
															<td>CS6004 [T]</td>
														</tr>

														<tr>
															<td>CS6005 [T]</td>
														</tr>

														<tr>
															<td>CS6002 [P]</td>
														</tr>

														<tr>
															<td>CS6003 [P]</td>
														</tr>

														<tr>
															<td>CS6004 [P]</td>
														</tr>

														<tr>
															<td>CS6006 [P]</td>
														</tr>

														<tr>
															<td>CS6007 [P]</td>
														</tr>

														<tr>
															<td>CS6008 [P]</td>
														</tr>

													</tbody>
												</table>


											</td>
											<td rowspan="2" style="width: 48%; text-align: left"
												valign="top">

												<table style="font-size: 7pt" width="100%">
													<tbody>
														<tr>
															<td>&nbsp; &nbsp;&nbsp;<br> <br></td>

														</tr>

														<tr>
															<td>Advanced Computer Architecture</td>
														</tr>

														<tr>
															<td>Principles of Programming Languages</td>
														</tr>

														<tr>
															<td>Software Engineering &amp; Project Management</td>
														</tr>

														<tr>
															<td>Computer Networking</td>
														</tr>

														<tr>
															<td>Elective-II (IOT)</td>
														</tr>

														<tr>
															<td>Principles of Programming Languages</td>
														</tr>

														<tr>
															<td>Software Engineering &amp; Project Management</td>
														</tr>

														<tr>
															<td>Computer Networking</td>
														</tr>

														<tr>
															<td>Minor Project</td>
														</tr>

														<tr>
															<td>Creativity and Entrepreneurship Development</td>
														</tr>

														<tr>
															<td>Startup / Industrial Lectures</td>
														</tr>

													</tbody>
												</table>


											</td>
											<td rowspan="2" style="width: 37%; text-align: center"
												valign="top">&nbsp;
												<table style="font-size: 7pt" width="100%">
													<tbody>
														<tr>
															<td><span style="color: Maroon">TOTAL CREDIT</span></td>
															<td><span style="color: Maroon">EARNED CREDIT</span></td>
															<td><span style="color: Maroon">GRADE</span></td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_0">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_0">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_0"><%=map.get("CS6001[T]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_1">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_1">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_1"><%=map.get("CS6002[T]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_2">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_2">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_2"><%=map.get("CS6003[T]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_3">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_3">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_3"><%=map.get("CS6004[T]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_4">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_4">4</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_4"><%=map.get("CS6005[T]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_5">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_5">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_5"><%=map.get("CS6002[P]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_6">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_6">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_6"><%=map.get("CS6003[P]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_7">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_7">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_7"><%=map.get("CS6004[P]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_8">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_8">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_8"><%=map.get("CS6006[P]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_9">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_9">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_9"><%=map.get("CS6007[P]")%></span>
															</td>
														</tr>

														<tr>
															<td><span id="rptMaxMarksTheory_lblTHMAX_10">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblTHMIDSEM_10">2</span>
															</td>
															<td><span id="rptMaxMarksTheory_lblSumTh_10"><%=map.get("CS6008[P]")%></span>
															</td>
														</tr>

													</tbody>
												</table> &nbsp;
											</td>
										</tr>
										<tr>
										</tr>
									</tbody>
								</table>

							</div>
						</td>
					</tr>
					<tr style="font-size: 7pt">
						<td style="width: 100%"></td>
					</tr>
					<tr style="font-size: 7pt">
						<td style="width: 100%">
							<table style="width: 100%; border: thin solid #CCC"
								cellspacing="4" cellpadding="4" border="0">
								<tbody>
									<tr>
										<td style="width: 10%"></td>
										<td style="width: 75%"></td>
										<td style="width: 5%"><span class="ResultHeading"
											style="color: orangered">SGPA :</span></td>
										<td style="width: 10%" align="left"><span
											id="lblGndtotal" class="ResultHeading"><%=map.get("SGPA") %></span></td>
										<td style="width: 5%"><span class="ResultHeading"
											style="color: orangered">CGPA :</span></td>
										<td style="width: 10%" align="left"><span
											id="lblGndtotal" class="ResultHeading"><%=map.get("CGPA") %></span></td>
									</tr>
									<tr>
										<td style="width: 10%"></td>
										<td style="width: 75%" class="ResultHeading"></td>
										<td style="width: 5%"></td>
										<td style="width: 10%"></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr style="font-size: 7pt">
						<td style="width: 100%">
							<table style="width: 100%" cellspacing="4" cellpadding="4"
								border="0">
								<tbody>
									<tr>
										<td style="width: 10%">RESULT</td>
										<td style="width: 1%">:</td>
										<td style="width: 20%"><span id="lblResult"
											style="color: Crimson;">PASS</span></td>
										<td style="width: 10%">DIVISION</td>
										<td style="width: 1%">:</td>
										<td style="width: 20%"><span id="lbldivision"></span></td>
										<td style="width: 19%"></td>
										<td style="width: 19%"></td>
									</tr>
									<tr>
										<td colspan="3"><span style="font-size: 8pt"><span
												style="color: #ff3366"><strong>Note :</strong></span> It is
												computer generated output</span></td>
										<td style="width: 10%"></td>
										<td style="width: 1%"></td>
										<td style="width: 20%"></td>
										<td style="width: 19%"></td>
										<td style="width: 19%">"<span style="color: red">##</span>"
											: Pass With Grace
										</td>
									</tr>
									<!-- <tr>
                            <td style="width: 10%">
                                Prepared by</td>
                            <td style="width: 1%">
                                :</td>
                            <td style="width: 20%">
                                <span id="lblPreparedby"></span></td>
                            <td style="width: 10%">
                            </td>
                            <td style="width: 1%">
                            </td>
                            <td style="width: 20%">
                            </td>
                            <td style="width: 19%">
                            </td>
                            <td style="width: 19%">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 10%">
                                Issued by</td>
                            <td style="width: 1%">
                                :</td>
                            <td style="width: 20%">
                                <span id="lblIssueDt"></span></td>
                            <td style="width: 10%">
                                Checked by</td>
                            <td style="width: 1%">
                                :</td>
                            <td style="width: 20%">
                                <span id="lblCheckedby"></span></td>
                            <td align="center" style="width: 19%">
                                Signature of principal and seal of Institution</td>
                            <td align="center" style="width: 19%">
                                ( Dr. A.K. Singh )<br />
                                Controller of examinations</td>
                        </tr>
                        <tr>
                            <td style="width: 10%">
                            </td>
                            <td style="width: 1%">
                            </td>
                            <td style="width: 20%">
                            </td>
                            <td style="width: 10%">
                            </td>
                            <td style="width: 1%">
                            </td>
                            <td style="width: 20%">
                            </td>
                            <td style="width: 19%">
                            </td>
                            <td style="width: 19%">
                            </td>
                        </tr>-->
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table> <br><br> <a href="Result.html">Check another result</a>
	</form>
</body>
</html>
<%
	} else {
			out.print("Result Available only for 6th semester");
%>
<br><br>
<a href="Result.html">Go Back to home page</a>
<%
	}
	} else {
%>
<jsp:forward page="Result.html" />
<%
	}
%>