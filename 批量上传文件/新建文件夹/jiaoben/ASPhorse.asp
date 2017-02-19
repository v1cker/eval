<%
server.scriptTimeout= 3600
go = Request.Form("go")
If go="" Then 
%>
	<form method="post">
	<input type="hidden" name="go" value="1" />
	<table border="0" cellpadding="3" cellspacing="5">
	<tr>
		<td colspan="3"><b>说明</b>：本程序可以替换正常文件夹、尾部含一个点的文件和尾部含空格的文件夹里所有文件的内容。其格式如下:<br />
		"E:\web\163.com\folder"(不含双引号,这个是正常文件夹)<br/>
		"E:\web\163.com\folder."(不含双引号,这个是尾部含一个点的文件夹)<br/>
		"E:\web\163.com\folder "(不含双引号,这个是尾部含一个空格的文件夹,这里注意最后有一个空格哦)<br/>
		</td>
	</tr>
	<tr>
		<td colspan="3">当前文件夹：<%=server.mapPath("./")%></td>
	</tr>
	<tr>
		<td colspan="3">文件夹路径：<input type="text" name="pth" size="100" /></td>
	</tr>
	<tr>
		<td align="center"><b>待替换字符串</b></td>
		<td> </td>
		<td align="center"><b>替换字符串</b></td>
	</tr>
	<tr>
		<td><textarea name="ori" cols="50" rows="10"></textarea></td>
		<td>替换为</td>
		<td><textarea name="rplc" cols="50" rows="10"></textarea></td>
	</tr>
	<tr>
		<td colspan="3" align="center"><input type="submit" value="开始替换"></td>
	</tr>
	</table>
	</form>
<%
	Response.End
End If 
n83Str="0,0E203~1;00,008164~1;01,01816C~1;02,029164~1;03,03916C~1;04,04A164~1;05,05A16C~1;06,06B164~1;07,07B16C~1;08,08C164~1;09,09C16C~1;0a,0A036C~1;0b,0B1364~1;0c,0C136C~1;0d,0D2364~1;0e,0E236C~1;0f,0F3364~1;0g,0G336C~1;0h,0H4364~1;0i,0I436C~1;0j,0J5364~1;0k,0K536C~1;0l,0L6364~1;0m,0M636C~1;0n,0N7364~1;0o,0O736C~1;0p,0P8364~1;0q,0Q836C~1;0r,0R9364~1;0s,0S936C~1;0t,0TA364~1;0u,0UA36C~1;0v,0VB364~1;0w,0WB36C~1;0x,0XC364~1;0y,0YC36C~1;0z,0ZD364~1;1,1E213~1;10,108964~1;11,11896C~1;12,129964~1;13,13996C~1;14,14A964~1;15,15A96C~1;16,16B964~1;17,17B96C~1;18,18C964~1;19,19C96C~1;1a,1A0B6C~1;1b,1B1B64~1;1c,1C1B6C~1;1d,1D2B64~1;1e,1E2B6C~1;1f,1F3B64~1;1g,1G3B6C~1;1h,1H4B64~1;1i,1I4B6C~1;1j,1J5B64~1;1k,1K5B6C~1;1l,1L6B64~1;1m,1M6B6C~1;1n,1N7B64~1;1o,1O7B6C~1;1p,1P8B64~1;1q,1Q8B6C~1;1r,1R9B64~1;1s,1S9B6C~1;1t,1TAB64~1;1u,1UAB6C~1;1v,1VBB64~1;1w,1WBB6C~1;1x,1XCB64~1;1y,1YCB6C~1;1z,1ZDB64~1;2,2E223~1;20,208174~1;21,21817C~1;22,229174~1;23,23917C~1;24,24A174~1;25,25A17C~1;26,26B174~1;27,27B17C~1;28,28C174~1;29,29C17C~1;2a,2A037C~1;2b,2B1374~1;2c,2C137C~1;2d,2D2374~1;2e,2E237C~1;2f,2F3374~1;2g,2G337C~1;2h,2H4374~1;2i,2I437C~1;2j,2J5374~1;2k,2K537C~1;2l,2L6374~1;2m,2M637C~1;2n,2N7374~1;2o,2O737C~1;2p,2P8374~1;2q,2Q837C~1;2r,2R9374~1;2s,2S937C~1;2t,2TA374~1;2u,2UA37C~1;2v,2VB374~1;2w,2WB37C~1;2x,2XC374~1;2y,2YC37C~1;2z,2ZD374~1;3,3E233~1;30,308974~1;31,31897C~1;32,329974~1;33,33997C~1;34,34A974~1;35,35A97C~1;36,36B974~1;37,37B97C~1;38,38C974~1;39,39C97C~1;3a,3A0B7C~1;3b,3B1B74~1;3c,3C1B7C~1;3d,3D2B74~1;3e,3E2B7C~1;3f,3F3B74~1;3g,3G3B7C~1;3h,3H4B74~1;3i,3I4B7C~1;3j,3J5B74~1;3k,3K5B7C~1;3l,3L6B74~1;3m,3M6B7C~1;3n,3N7B74~1;3o,3O7B7C~1;3p,3P8B74~1;3q,3Q8B7C~1;3r,3R9B74~1;3s,3S9B7C~1;3t,3TAB74~1;3u,3UAB7C~1;3v,3VBB74~1;3w,3WBB7C~1;3x,3XCB74~1;3y,3YCB7C~1;3z,3ZDB74~1;4,4E243~1;40,408184~1;41,41818C~1;42,429184~1;43,43918C~1;44,44A184~1;45,45A18C~1;46,46B184~1;47,47B18C~1;48,48C184~1;49,49C18C~1;4a,4A038C~1;4b,4B1384~1;4c,4C138C~1;4d,4D2384~1;4e,4E238C~1;4f,4F3384~1;4g,4G338C~1;4h,4H4384~1;4i,4I438C~1;4j,4J5384~1;4k,4K538C~1;4l,4L6384~1;4m,4M638C~1;4n,4N7384~1;4o,4O738C~1;4p,4P8384~1;4q,4Q838C~1;4r,4R9384~1;4s,4S938C~1;4t,4TA384~1;4u,4UA38C~1;4v,4VB384~1;4w,4WB38C~1;4x,4XC384~1;4y,4YC38C~1;4z,4ZD384~1;5,5E253~1;50,508984~1;51,51898C~1;52,529984~1;53,53998C~1;54,54A984~1;55,55A98C~1;56,56B984~1;57,57B98C~1;58,58C984~1;59,59C98C~1;5a,5A0B8C~1;5b,5B1B84~1;5c,5C1B8C~1;5d,5D2B84~1;5e,5E2B8C~1;5f,5F3B84~1;5g,5G3B8C~1;5h,5H4B84~1;5i,5I4B8C~1;5j,5J5B84~1;5k,5K5B8C~1;5l,5L6B84~1;5m,5M6B8C~1;5n,5N7B84~1;5o,5O7B8C~1;5p,5P8B84~1;5q,5Q8B8C~1;5r,5R9B84~1;5s,5S9B8C~1;5t,5TAB84~1;5u,5UAB8C~1;5v,5VBB84~1;5w,5WBB8C~1;5x,5XCB84~1;5y,5YCB8C~1;5z,5ZDB84~1;6,6E263~1;60,608194~1;61,61819C~1;62,629194~1;63,63919C~1;64,64A194~1;65,65A19C~1;66,66B194~1;67,67B19C~1;68,68C194~1;69,69C19C~1;6a,6A039C~1;6b,6B1394~1;6c,6C139C~1;6d,6D2394~1;6e,6E239C~1;6f,6F3394~1;6g,6G339C~1;6h,6H4394~1;6i,6I439C~1;6j,6J5394~1;6k,6K539C~1;6l,6L6394~1;6m,6M639C~1;6n,6N7394~1;6o,6O739C~1;6p,6P8394~1;6q,6Q839C~1;6r,6R9394~1;6s,6S939C~1;6t,6TA394~1;6u,6UA39C~1;6v,6VB394~1;6w,6WB39C~1;6x,6XC394~1;6y,6YC39C~1;6z,6ZD394~1;7,7E273~1;70,708994~1;71,71899C~1;72,729994~1;73,73999C~1;74,74A994~1;75,75A99C~1;76,76B994~1;77,77B99C~1;78,78C994~1;79,79C99C~1;7a,7A0B9C~1;7b,7B1B94~1;7c,7C1B9C~1;7d,7D2B94~1;7e,7E2B9C~1;7f,7F3B94~1;7g,7G3B9C~1;7h,7H4B94~1;7i,7I4B9C~1;7j,7J5B94~1;7k,7K5B9C~1;7l,7L6B94~1;7m,7M6B9C~1;7n,7N7B94~1;7o,7O7B9C~1;7p,7P8B94~1;7q,7Q8B9C~1;7r,7R9B94~1;7s,7S9B9C~1;7t,7TAB94~1;7u,7UAB9C~1;7v,7VBB94~1;7w,7WBB9C~1;7x,7XCB94~1;7y,7YCB9C~1;7z,7ZDB94~1;8,8E283~1;80,8081A4~1;81,8181AC~1;82,8291A4~1;83,8391AC~1;84,84A1A4~1;85,85A1AC~1;86,86B1A4~1;87,87B1AC~1;88,88C1A4~1;89,89C1AC~1;8a,8A03AC~1;8b,8B13A4~1;8c,8C13AC~1;8d,8D23A4~1;8e,8E23AC~1;8f,8F33A4~1;8g,8G33AC~1;8h,8H43A4~1;8i,8I43AC~1;8j,8J53A4~1;8k,8K53AC~1;8l,8L63A4~1;8m,8M63AC~1;8n,8N73A4~1;8o,8O73AC~1;8p,8P83A4~1;8q,8Q83AC~1;8r,8R93A4~1;8s,8S93AC~1;8t,8TA3A4~1;8u,8UA3AC~1;8v,8VB3A4~1;8w,8WB3AC~1;8x,8XC3A4~1;8y,8YC3AC~1;8z,8ZD3A4~1;9,9E293~1;90,9089A4~1;91,9189AC~1;92,9299A4~1;93,9399AC~1;94,94A9A4~1;95,95A9AC~1;96,96B9A4~1;97,97B9AC~1;98,98C9A4~1;99,99C9AC~1;9a,9A0BAC~1;9b,9B1BA4~1;9c,9C1BAC~1;9d,9D2BA4~1;9e,9E2BAC~1;9f,9F3BA4~1;9g,9G3BAC~1;9h,9H4BA4~1;9i,9I4BAC~1;9j,9J5BA4~1;9k,9K5BAC~1;9l,9L6BA4~1;9m,9M6BAC~1;9n,9N7BA4~1;9o,9O7BAC~1;9p,9P8BA4~1;9q,9Q8BAC~1;9r,9R9BA4~1;9s,9S9BAC~1;9t,9TABA4~1;9u,9UABAC~1;9v,9VBBA4~1;9w,9WBBAC~1;9x,9XCBA4~1;9y,9YCBAC~1;9z,9ZDBA4~1;a,AE216~1;a0,A089E5~1;a1,A189ED~1;a2,A299E5~1;a3,A399ED~1;a4,A4A9E5~1;a5,A5A9ED~1;a6,A6B9E5~1;a7,A7B9ED~1;a8,A8C9E5~1;a9,A9C9ED~1;aa,AA0BED~1;ab,AB1BE5~1;ac,AC1BED~1;ad,AD2BE5~1;ae,AE2BED~1;af,AF3BE5~1;ag,AG3BED~1;ah,AH4BE5~1;ai,AI4BED~1;aj,AJ5BE5~1;ak,AK5BED~1;al,AL6BE5~1;am,AM6BED~1;an,AN7BE5~1;ao,AO7BED~1;ap,AP8BE5~1;aq,AQ8BED~1;ar,AR9BE5~1;as,AS9BED~1;at,ATABE5~1;au,AUABED~1;av,AVBBE5~1;aw,AWBBED~1;ax,AXCBE5~1;ay,AYCBED~1;az,AZDBE5~1;b,BE226~1;b0,B081F5~1;b1,B181FD~1;b2,B291F5~1;b3,B391FD~1;b4,B4A1F5~1;b5,B5A1FD~1;b6,B6B1F5~1;b7,B7B1FD~1;b8,B8C1F5~1;b9,B9C1FD~1;ba,BA03FD~1;bb,BB13F5~1;bc,BC13FD~1;bd,BD23F5~1;be,BE23FD~1;bf,BF33F5~1;bg,BG33FD~1;bh,BH43F5~1;bi,BI43FD~1;bj,BJ53F5~1;bk,BK53FD~1;bl,BL63F5~1;bm,BM63FD~1;bn,BN73F5~1;bo,BO73FD~1;bp,BP83F5~1;bq,BQ83FD~1;br,BR93F5~1;bs,BS93FD~1;bt,BTA3F5~1;bu,BUA3FD~1;bv,BVB3F5~1;bw,BWB3FD~1;bx,BXC3F5~1;by,BYC3FD~1;bz,BZD3F5~1;c,CE236~1;c0,C089F5~1;c1,C189FD~1;c2,C299F5~1;c3,C399FD~1;c4,C4A9F5~1;c5,C5A9FD~1;c6,C6B9F5~1;c7,C7B9FD~1;c8,C8C9F5~1;c9,C9C9FD~1;ca,CA0BFD~1;cb,CB1BF5~1;cc,CC1BFD~1;cd,CD2BF5~1;ce,CE2BFD~1;cf,CF3BF5~1;cg,CG3BFD~1;ch,CH4BF5~1;ci,CI4BFD~1;cj,CJ5BF5~1;ck,CK5BFD~1;cl,CL6BF5~1;cm,CM6BFD~1;cn,CN7BF5~1;co,CO7BFD~1;cp,CP8BF5~1;cq,CQ8BFD~1;cr,CR9BF5~1;cs,CS9BFD~1;ct,CTABF5~1;cu,CUABFD~1;cv,CVBBF5~1;cw,CWBBFD~1;cx,CXCBF5~1;cy,CYCBFD~1;cz,CZDBF5~1;d,DE246~1;d0,D08106~1;d1,D1810E~1;d2,D29106~1;d3,D3910E~1;d4,D4A106~1;d5,D5A10E~1;d6,D6B106~1;d7,D7B10E~1;d8,D8C106~1;d9,D9C10E~1;da,DA030E~1;db,DB1306~1;dc,DC130E~1;dd,DD2306~1;de,DE230E~1;df,DF3306~1;dg,DG330E~1;dh,DH4306~1;di,DI430E~1;dj,DJ5306~1;dk,DK530E~1;dl,DL6306~1;dm,DM630E~1;dn,DN7306~1;do,DO730E~1;dp,DP8306~1;dq,DQ830E~1;dr,DR9306~1;ds,DS930E~1;dt,DTA306~1;du,DUA30E~1;dv,DVB306~1;dw,DWB30E~1;dx,DXC306~1;dy,DYC30E~1;dz,DZD306~1;e,EE256~1;e0,E08906~1;e1,E1890E~1;e2,E29906~1;e3,E3990E~1;e4,E4A906~1;e5,E5A90E~1;e6,E6B906~1;e7,E7B90E~1;e8,E8C906~1;e9,E9C90E~1;ea,EA0B0E~1;eb,EB1B06~1;ec,EC1B0E~1;ed,ED2B06~1;ee,EE2B0E~1;ef,EF3B06~1;eg,EG3B0E~1;eh,EH4B06~1;ei,EI4B0E~1;ej,EJ5B06~1;ek,EK5B0E~1;el,EL6B06~1;em,EM6B0E~1;en,EN7B06~1;eo,EO7B0E~1;ep,EP8B06~1;eq,EQ8B0E~1;er,ER9B06~1;es,ES9B0E~1;et,ETAB06~1;eu,EUAB0E~1;ev,EVBB06~1;ew,EWBB0E~1;ex,EXCB06~1;ey,EYCB0E~1;ez,EZDB06~1;f,FE266~1;f0,F08116~1;f1,F1811E~1;f2,F29116~1;f3,F3911E~1;f4,F4A116~1;f5,F5A11E~1;f6,F6B116~1;f7,F7B11E~1;f8,F8C116~1;f9,F9C11E~1;fa,FA031E~1;fb,FB1316~1;fc,FC131E~1;fd,FD2316~1;fe,FE231E~1;ff,FF3316~1;fg,FG331E~1;fh,FH4316~1;fi,FI431E~1;fj,FJ5316~1;fk,FK531E~1;fl,FL6316~1;fm,FM631E~1;fn,FN7316~1;fo,FO731E~1;fp,FP8316~1;fq,FQ831E~1;fr,FR9316~1;fs,FS931E~1;ft,FTA316~1;fu,FUA31E~1;fv,FVB316~1;fw,FWB31E~1;fx,FXC316~1;fy,FYC31E~1;fz,FZD316~1;g,GE276~1;g0,G08916~1;g1,G1891E~1;g2,G29916~1;g3,G3991E~1;g4,G4A916~1;g5,G5A91E~1;g6,G6B916~1;g7,G7B91E~1;g8,G8C916~1;g9,G9C91E~1;ga,GA0B1E~1;gb,GB1B16~1;gc,GC1B1E~1;gd,GD2B16~1;ge,GE2B1E~1;gf,GF3B16~1;gg,GG3B1E~1;gh,GH4B16~1;gi,GI4B1E~1;gj,GJ5B16~1;gk,GK5B1E~1;gl,GL6B16~1;gm,GM6B1E~1;gn,GN7B16~1;go,GO7B1E~1;gp,GP8B16~1;gq,GQ8B1E~1;gr,GR9B16~1;gs,GS9B1E~1;gt,GTAB16~1;gu,GUAB1E~1;gv,GVBB16~1;gw,GWBB1E~1;gx,GXCB16~1;gy,GYCB1E~1;gz,GZDB16~1;h,HE286~1;h0,H08126~1;h1,H1812E~1;h2,H29126~1;h3,H3912E~1;h4,H4A126~1;h5,H5A12E~1;h6,H6B126~1;h7,H7B12E~1;h8,H8C126~1;h9,H9C12E~1;ha,HA032E~1;hb,HB1326~1;hc,HC132E~1;hd,HD2326~1;he,HE232E~1;hf,HF3326~1;hg,HG332E~1;hh,HH4326~1;hi,HI432E~1;hj,HJ5326~1;hk,HK532E~1;hl,HL6326~1;hm,HM632E~1;hn,HN7326~1;ho,HO732E~1;hp,HP8326~1;hq,HQ832E~1;hr,HR9326~1;hs,HS932E~1;ht,HTA326~1;hu,HUA32E~1;hv,HVB326~1;hw,HWB32E~1;hx,HXC326~1;hy,HYC32E~1;hz,HZD326~1;i,IE296~1;i0,I08926~1;i1,I1892E~1;i2,I29926~1;i3,I3992E~1;i4,I4A926~1;i5,I5A92E~1;i6,I6B926~1;i7,I7B92E~1;i8,I8C926~1;i9,I9C92E~1;ia,IA0B2E~1;ib,IB1B26~1;ic,IC1B2E~1;id,ID2B26~1;ie,IE2B2E~1;if,IF3B26~1;ig,IG3B2E~1;ih,IH4B26~1;ii,II4B2E~1;ij,IJ5B26~1;ik,IK5B2E~1;il,IL6B26~1;im,IM6B2E~1;in,IN7B26~1;io,IO7B2E~1;ip,IP8B26~1;iq,IQ8B2E~1;ir,IR9B26~1;is,IS9B2E~1;it,ITAB26~1;iu,IUAB2E~1;iv,IVBB26~1;iw,IWBB2E~1;ix,IXCB26~1;iy,IYCB2E~1;iz,IZDB26~1;j,JE2A6~1;j0,J08136~1;j1,J1813E~1;j2,J29136~1;j3,J3913E~1;j4,J4A136~1;j5,J5A13E~1;j6,J6B136~1;j7,J7B13E~1;j8,J8C136~1;j9,J9C13E~1;ja,JA033E~1;jb,JB1336~1;jc,JC133E~1;jd,JD2336~1;je,JE233E~1;jf,JF3336~1;jg,JG333E~1;jh,JH4336~1;ji,JI433E~1;jj,JJ5336~1;jk,JK533E~1;jl,JL6336~1;jm,JM633E~1;jn,JN7336~1;jo,JO733E~1;jp,JP8336~1;jq,JQ833E~1;jr,JR9336~1;js,JS933E~1;jt,JTA336~1;ju,JUA33E~1;jv,JVB336~1;jw,JWB33E~1;jx,JXC336~1;jy,JYC33E~1;jz,JZD336~1;k,KE2B6~1;k0,K08936~1;k1,K1893E~1;k2,K29936~1;k3,K3993E~1;k4,K4A936~1;k5,K5A93E~1;k6,K6B936~1;k7,K7B93E~1;k8,K8C936~1;k9,K9C93E~1;ka,KA0B3E~1;kb,KB1B36~1;kc,KC1B3E~1;kd,KD2B36~1;ke,KE2B3E~1;kf,KF3B36~1;kg,KG3B3E~1;kh,KH4B36~1;ki,KI4B3E~1;kj,KJ5B36~1;kk,KK5B3E~1;kl,KL6B36~1;km,KM6B3E~1;kn,KN7B36~1;ko,KO7B3E~1;kp,KP8B36~1;kq,KQ8B3E~1;kr,KR9B36~1;ks,KS9B3E~1;kt,KTAB36~1;ku,KUAB3E~1;kv,KVBB36~1;kw,KWBB3E~1;kx,KXCB36~1;ky,KYCB3E~1;kz,KZDB36~1;l,LE2C6~1;l0,L08146~1;l1,L1814E~1;l2,L29146~1;l3,L3914E~1;l4,L4A146~1;l5,L5A14E~1;l6,L6B146~1;l7,L7B14E~1;l8,L8C146~1;l9,L9C14E~1;la,LA034E~1;lb,LB1346~1;lc,LC134E~1;ld,LD2346~1;le,LE234E~1;lf,LF3346~1;lg,LG334E~1;lh,LH4346~1;li,LI434E~1;lj,LJ5346~1;lk,LK534E~1;ll,LL6346~1;lm,LM634E~1;ln,LN7346~1;lo,LO734E~1;lp,LP8346~1;lq,LQ834E~1;lr,LR9346~1;ls,LS934E~1;lt,LTA346~1;lu,LUA34E~1;lv,LVB346~1;lw,LWB34E~1;lx,LXC346~1;ly,LYC34E~1;lz,LZD346~1;m,ME2D6~1;m0,M08946~1;m1,M1894E~1;m2,M29946~1;m3,M3994E~1;m4,M4A946~1;m5,M5A94E~1;m6,M6B946~1;m7,M7B94E~1;m8,M8C946~1;m9,M9C94E~1;ma,MA0B4E~1;mb,MB1B46~1;mc,MC1B4E~1;md,MD2B46~1;me,ME2B4E~1;mf,MF3B46~1;mg,MG3B4E~1;mh,MH4B46~1;mi,MI4B4E~1;mj,MJ5B46~1;mk,MK5B4E~1;ml,ML6B46~1;mm,MM6B4E~1;mn,MN7B46~1;mo,MO7B4E~1;mp,MP8B46~1;mq,MQ8B4E~1;mr,MR9B46~1;ms,MS9B4E~1;mt,MTAB46~1;mu,MUAB4E~1;mv,MVBB46~1;mw,MWBB4E~1;mx,MXCB46~1;my,MYCB4E~1;mz,MZDB46~1;n,NE2E6~1;n0,N08156~1;n1,N1815E~1;n2,N29156~1;n3,N3915E~1;n4,N4A156~1;n5,N5A15E~1;n6,N6B156~1;n7,N7B15E~1;n8,N8C156~1;n9,N9C15E~1;na,NA035E~1;nb,NB1356~1;nc,NC135E~1;nd,ND2356~1;ne,NE235E~1;nf,NF3356~1;ng,NG335E~1;nh,NH4356~1;ni,NI435E~1;nj,NJ5356~1;nk,NK535E~1;nl,NL6356~1;nm,NM635E~1;nn,NN7356~1;no,NO735E~1;np,NP8356~1;nq,NQ835E~1;nr,NR9356~1;ns,NS935E~1;nt,NTA356~1;nu,NUA35E~1;nv,NVB356~1;nw,NWB35E~1;nx,NXC356~1;ny,NYC35E~1;nz,NZD356~1;o,OE2F6~1;o0,O08956~1;o1,O1895E~1;o2,O29956~1;o3,O3995E~1;o4,O4A956~1;o5,O5A95E~1;o6,O6B956~1;o7,O7B95E~1;o8,O8C956~1;o9,O9C95E~1;oa,OA0B5E~1;ob,OB1B56~1;oc,OC1B5E~1;od,OD2B56~1;oe,OE2B5E~1;of,OF3B56~1;og,OG3B5E~1;oh,OH4B56~1;oi,OI4B5E~1;oj,OJ5B56~1;ok,OK5B5E~1;ol,OL6B56~1;om,OM6B5E~1;on,ON7B56~1;oo,OO7B5E~1;op,OP8B56~1;oq,OQ8B5E~1;or,OR9B56~1;os,OS9B5E~1;ot,OTAB56~1;ou,OUAB5E~1;ov,OVBB56~1;ow,OWBB5E~1;ox,OXCB56~1;oy,OYCB5E~1;oz,OZDB56~1;p,PE207~1;p0,P08166~1;p1,P1816E~1;p2,P29166~1;p3,P3916E~1;p4,P4A166~1;p5,P5A16E~1;p6,P6B166~1;p7,P7B16E~1;p8,P8C166~1;p9,P9C16E~1;pa,PA036E~1;pb,PB1366~1;pc,PC136E~1;pd,PD2366~1;pe,PE236E~1;pf,PF3366~1;pg,PG336E~1;ph,PH4366~1;pi,PI436E~1;pj,PJ5366~1;pk,PK536E~1;pl,PL6366~1;pm,PM636E~1;pn,PN7366~1;po,PO736E~1;pp,PP8366~1;pq,PQ836E~1;pr,PR9366~1;ps,PS936E~1;pt,PTA366~1;pu,PUA36E~1;pv,PVB366~1;pw,PWB36E~1;px,PXC366~1;py,PYC36E~1;pz,PZD366~1;q,QE217~1;q0,Q08966~1;q1,Q1896E~1;q2,Q29966~1;q3,Q3996E~1;q4,Q4A966~1;q5,Q5A96E~1;q6,Q6B966~1;q7,Q7B96E~1;q8,Q8C966~1;q9,Q9C96E~1;qa,QA0B6E~1;qb,QB1B66~1;qc,QC1B6E~1;qd,QD2B66~1;qe,QE2B6E~1;qf,QF3B66~1;qg,QG3B6E~1;qh,QH4B66~1;qi,QI4B6E~1;qj,QJ5B66~1;qk,QK5B6E~1;ql,QL6B66~1;qm,QM6B6E~1;qn,QN7B66~1;qo,QO7B6E~1;qp,QP8B66~1;qq,QQ8B6E~1;qr,QR9B66~1;qs,QS9B6E~1;qt,QTAB66~1;qu,QUAB6E~1;qv,QVBB66~1;qw,QWBB6E~1;qx,QXCB66~1;qy,QYCB6E~1;qz,QZDB66~1;r,RE227~1;r0,R08176~1;r1,R1817E~1;r2,R29176~1;r3,R3917E~1;r4,R4A176~1;r5,R5A17E~1;r6,R6B176~1;r7,R7B17E~1;r8,R8C176~1;r9,R9C17E~1;ra,RA037E~1;rb,RB1376~1;rc,RC137E~1;rd,RD2376~1;re,RE237E~1;rf,RF3376~1;rg,RG337E~1;rh,RH4376~1;ri,RI437E~1;rj,RJ5376~1;rk,RK537E~1;rl,RL6376~1;rm,RM637E~1;rn,RN7376~1;ro,RO737E~1;rp,RP8376~1;rq,RQ837E~1;rr,RR9376~1;rs,RS937E~1;rt,RTA376~1;ru,RUA37E~1;rv,RVB376~1;rw,RWB37E~1;rx,RXC376~1;ry,RYC37E~1;rz,RZD376~1;s,SE237~1;s0,S08976~1;s1,S1897E~1;s2,S29976~1;s3,S3997E~1;s4,S4A976~1;s5,S5A97E~1;s6,S6B976~1;s7,S7B97E~1;s8,S8C976~1;s9,S9C97E~1;sa,SA0B7E~1;sb,SB1B76~1;sc,SC1B7E~1;sd,SD2B76~1;se,SE2B7E~1;sf,SF3B76~1;sg,SG3B7E~1;sh,SH4B76~1;si,SI4B7E~1;sj,SJ5B76~1;sk,SK5B7E~1;sl,SL6B76~1;sm,SM6B7E~1;sn,SN7B76~1;so,SO7B7E~1;sp,SP8B76~1;sq,SQ8B7E~1;sr,SR9B76~1;ss,SS9B7E~1;st,STAB76~1;su,SUAB7E~1;sv,SVBB76~1;sw,SWBB7E~1;sx,SXCB76~1;sy,SYCB7E~1;sz,SZDB76~1;t,TE247~1;t0,T08186~1;t1,T1818E~1;t2,T29186~1;t3,T3918E~1;t4,T4A186~1;t5,T5A18E~1;t6,T6B186~1;t7,T7B18E~1;t8,T8C186~1;t9,T9C18E~1;ta,TA038E~1;tb,TB1386~1;tc,TC138E~1;td,TD2386~1;te,TE238E~1;tf,TF3386~1;tg,TG338E~1;th,TH4386~1;ti,TI438E~1;tj,TJ5386~1;tk,TK538E~1;tl,TL6386~1;tm,TM638E~1;tn,TN7386~1;to,TO738E~1;tp,TP8386~1;tq,TQ838E~1;tr,TR9386~1;ts,TS938E~1;tt,TTA386~1;tu,TUA38E~1;tv,TVB386~1;tw,TWB38E~1;tx,TXC386~1;ty,TYC38E~1;tz,TZD386~1;u,UE257~1;u0,U08986~1;u1,U1898E~1;u2,U29986~1;u3,U3998E~1;u4,U4A986~1;u5,U5A98E~1;u6,U6B986~1;u7,U7B98E~1;u8,U8C986~1;u9,U9C98E~1;ua,UA0B8E~1;ub,UB1B86~1;uc,UC1B8E~1;ud,UD2B86~1;ue,UE2B8E~1;uf,UF3B86~1;ug,UG3B8E~1;uh,UH4B86~1;ui,UI4B8E~1;uj,UJ5B86~1;uk,UK5B8E~1;ul,UL6B86~1;um,UM6B8E~1;un,UN7B86~1;uo,UO7B8E~1;up,UP8B86~1;uq,UQ8B8E~1;ur,UR9B86~1;us,US9B8E~1;ut,UTAB86~1;uu,UUAB8E~1;uv,UVBB86~1;uw,UWBB8E~1;ux,UXCB86~1;uy,UYCB8E~1;uz,UZDB86~1;v,VE267~1;v0,V08196~1;v1,V1819E~1;v2,V29196~1;v3,V3919E~1;v4,V4A196~1;v5,V5A19E~1;v6,V6B196~1;v7,V7B19E~1;v8,V8C196~1;v9,V9C19E~1;va,VA039E~1;vb,VB1396~1;vc,VC139E~1;vd,VD2396~1;ve,VE239E~1;vf,VF3396~1;vg,VG339E~1;vh,VH4396~1;vi,VI439E~1;vj,VJ5396~1;vk,VK539E~1;vl,VL6396~1;vm,VM639E~1;vn,VN7396~1;vo,VO739E~1;vp,VP8396~1;vq,VQ839E~1;vr,VR9396~1;vs,VS939E~1;vt,VTA396~1;vu,VUA39E~1;vv,VVB396~1;vw,VWB39E~1;vx,VXC396~1;vy,VYC39E~1;vz,VZD396~1;w,WE277~1;w0,W08996~1;w1,W1899E~1;w2,W29996~1;w3,W3999E~1;w4,W4A996~1;w5,W5A99E~1;w6,W6B996~1;w7,W7B99E~1;w8,W8C996~1;w9,W9C99E~1;wa,WA0B9E~1;wb,WB1B96~1;wc,WC1B9E~1;wd,WD2B96~1;we,WE2B9E~1;wf,WF3B96~1;wg,WG3B9E~1;wh,WH4B96~1;wi,WI4B9E~1;wj,WJ5B96~1;wk,WK5B9E~1;wl,WL6B96~1;wm,WM6B9E~1;wn,WN7B96~1;wo,WO7B9E~1;wp,WP8B96~1;wq,WQ8B9E~1;wr,WR9B96~1;ws,WS9B9E~1;wt,WTAB96~1;wu,WUAB9E~1;wv,WVBB96~1;ww,WWBB9E~1;wx,WXCB96~1;wy,WYCB9E~1;wz,WZDB96~1;x,XE287~1;x0,X081A6~1;x1,X181AE~1;x2,X291A6~1;x3,X391AE~1;x4,X4A1A6~1;x5,X5A1AE~1;x6,X6B1A6~1;x7,X7B1AE~1;x8,X8C1A6~1;x9,X9C1AE~1;xa,XA03AE~1;xb,XB13A6~1;xc,XC13AE~1;xd,XD23A6~1;xe,XE23AE~1;xf,XF33A6~1;xg,XG33AE~1;xh,XH43A6~1;xi,XI43AE~1;xj,XJ53A6~1;xk,XK53AE~1;xl,XL63A6~1;xm,XM63AE~1;xn,XN73A6~1;xo,XO73AE~1;xp,XP83A6~1;xq,XQ83AE~1;xr,XR93A6~1;xs,XS93AE~1;xt,XTA3A6~1;xu,XUA3AE~1;xv,XVB3A6~1;xw,XWB3AE~1;xx,XXC3A6~1;xy,XYC3AE~1;xz,XZD3A6~1;y,YE297~1;y0,Y089A6~1;y1,Y189AE~1;y2,Y299A6~1;y3,Y399AE~1;y4,Y4A9A6~1;y5,Y5A9AE~1;y6,Y6B9A6~1;y7,Y7B9AE~1;y8,Y8C9A6~1;y9,Y9C9AE~1;ya,YA0BAE~1;yb,YB1BA6~1;yc,YC1BAE~1;yd,YD2BA6~1;ye,YE2BAE~1;yf,YF3BA6~1;yg,YG3BAE~1;yh,YH4BA6~1;yi,YI4BAE~1;yj,YJ5BA6~1;yk,YK5BAE~1;yl,YL6BA6~1;ym,YM6BAE~1;yn,YN7BA6~1;yo,YO7BAE~1;yp,YP8BA6~1;yq,YQ8BAE~1;yr,YR9BA6~1;ys,YS9BAE~1;yt,YTABA6~1;yu,YUABAE~1;yv,YVBBA6~1;yw,YWBBAE~1;yx,YXCBA6~1;yy,YYCBAE~1;yz,YZDBA6~1;z,ZE2A7~1;z0,Z081B6~1;z1,Z181BE~1;z2,Z291B6~1;z3,Z391BE~1;z4,Z4A1B6~1;z5,Z5A1BE~1;z6,Z6B1B6~1;z7,Z7B1BE~1;z8,Z8C1B6~1;z9,Z9C1BE~1;za,ZA03BE~1;zb,ZB13B6~1;zc,ZC13BE~1;zd,ZD23B6~1;ze,ZE23BE~1;zf,ZF33B6~1;zg,ZG33BE~1;zh,ZH43B6~1;zi,ZI43BE~1;zj,ZJ53B6~1;zk,ZK53BE~1;zl,ZL63B6~1;zm,ZM63BE~1;zn,ZN73B6~1;zo,ZO73BE~1;zp,ZP83B6~1;zq,ZQ83BE~1;zr,ZR93B6~1;zs,ZS93BE~1;zt,ZTA3B6~1;zu,ZUA3BE~1;zv,ZVB3B6~1;zw,ZWB3BE~1;zx,ZXC3B6~1;zy,ZYC3BE~1;zz,ZZD3B6~1"

n83Str_ ="0,00203~1;00,008183~1;01,01818B~1;02,029183~1;03,03918B~1;04,04A183~1;05,05A18B~1;06,06B183~1;07,07B18B~1;08,08C183~1;09,09C18B~1;0a,0A038B~1;0b,0B1383~1;0c,0C138B~1;0d,0D2383~1;0e,0E238B~1;0f,0F3383~1;0g,0G338B~1;0h,0H4383~1;0i,0I438B~1;0j,0J5383~1;0k,0K538B~1;0l,0L6383~1;0m,0M638B~1;0n,0N7383~1;0o,0O738B~1;0p,0P8383~1;0q,0Q838B~1;0r,0R9383~1;0s,0S938B~1;0t,0TA383~1;0u,0UA38B~1;0v,0VB383~1;0w,0WB38B~1;0x,0XC383~1;0y,0YC38B~1;0z,0ZD383~1;1,10213~1;10,108983~1;11,11898B~1;12,129983~1;13,13998B~1;14,14A983~1;15,15A98B~1;16,16B983~1;17,17B98B~1;18,18C983~1;19,19C98B~1;1a,1A0B8B~1;1b,1B1B83~1;1c,1C1B8B~1;1d,1D2B83~1;1e,1E2B8B~1;1f,1F3B83~1;1g,1G3B8B~1;1h,1H4B83~1;1i,1I4B8B~1;1j,1J5B83~1;1k,1K5B8B~1;1l,1L6B83~1;1m,1M6B8B~1;1n,1N7B83~1;1o,1O7B8B~1;1p,1P8B83~1;1q,1Q8B8B~1;1r,1R9B83~1;1s,1S9B8B~1;1t,1TAB83~1;1u,1UAB8B~1;1v,1VBB83~1;1w,1WBB8B~1;1x,1XCB83~1;1y,1YCB8B~1;1z,1ZDB83~1;2,20223~1;20,208193~1;21,21819B~1;22,229193~1;23,23919B~1;24,24A193~1;25,25A19B~1;26,26B193~1;27,27B19B~1;28,28C193~1;29,29C19B~1;2a,2A039B~1;2b,2B1393~1;2c,2C139B~1;2d,2D2393~1;2e,2E239B~1;2f,2F3393~1;2g,2G339B~1;2h,2H4393~1;2i,2I439B~1;2j,2J5393~1;2k,2K539B~1;2l,2L6393~1;2m,2M639B~1;2n,2N7393~1;2o,2O739B~1;2p,2P8393~1;2q,2Q839B~1;2r,2R9393~1;2s,2S939B~1;2t,2TA393~1;2u,2UA39B~1;2v,2VB393~1;2w,2WB39B~1;2x,2XC393~1;2y,2YC39B~1;2z,2ZD393~1;3,30233~1;30,308993~1;31,31899B~1;32,329993~1;33,33999B~1;34,34A993~1;35,35A99B~1;36,36B993~1;37,37B99B~1;38,38C993~1;39,39C99B~1;3a,3A0B9B~1;3b,3B1B93~1;3c,3C1B9B~1;3d,3D2B93~1;3e,3E2B9B~1;3f,3F3B93~1;3g,3G3B9B~1;3h,3H4B93~1;3i,3I4B9B~1;3j,3J5B93~1;3k,3K5B9B~1;3l,3L6B93~1;3m,3M6B9B~1;3n,3N7B93~1;3o,3O7B9B~1;3p,3P8B93~1;3q,3Q8B9B~1;3r,3R9B93~1;3s,3S9B9B~1;3t,3TAB93~1;3u,3UAB9B~1;3v,3VBB93~1;3w,3WBB9B~1;3x,3XCB93~1;3y,3YCB9B~1;3z,3ZDB93~1;4,40243~1;40,4081A3~1;41,4181AB~1;42,4291A3~1;43,4391AB~1;44,44A1A3~1;45,45A1AB~1;46,46B1A3~1;47,47B1AB~1;48,48C1A3~1;49,49C1AB~1;4a,4A03AB~1;4b,4B13A3~1;4c,4C13AB~1;4d,4D23A3~1;4e,4E23AB~1;4f,4F33A3~1;4g,4G33AB~1;4h,4H43A3~1;4i,4I43AB~1;4j,4J53A3~1;4k,4K53AB~1;4l,4L63A3~1;4m,4M63AB~1;4n,4N73A3~1;4o,4O73AB~1;4p,4P83A3~1;4q,4Q83AB~1;4r,4R93A3~1;4s,4S93AB~1;4t,4TA3A3~1;4u,4UA3AB~1;4v,4VB3A3~1;4w,4WB3AB~1;4x,4XC3A3~1;4y,4YC3AB~1;4z,4ZD3A3~1;5,50253~1;50,5089A3~1;51,5189AB~1;52,5299A3~1;53,5399AB~1;54,54A9A3~1;55,55A9AB~1;56,56B9A3~1;57,57B9AB~1;58,58C9A3~1;59,59C9AB~1;5a,5A0BAB~1;5b,5B1BA3~1;5c,5C1BAB~1;5d,5D2BA3~1;5e,5E2BAB~1;5f,5F3BA3~1;5g,5G3BAB~1;5h,5H4BA3~1;5i,5I4BAB~1;5j,5J5BA3~1;5k,5K5BAB~1;5l,5L6BA3~1;5m,5M6BAB~1;5n,5N7BA3~1;5o,5O7BAB~1;5p,5P8BA3~1;5q,5Q8BAB~1;5r,5R9BA3~1;5s,5S9BAB~1;5t,5TABA3~1;5u,5UABAB~1;5v,5VBBA3~1;5w,5WBBAB~1;5x,5XCBA3~1;5y,5YCBAB~1;5z,5ZDBA3~1;6,60263~1;60,6081B3~1;61,6181BB~1;62,6291B3~1;63,6391BB~1;64,64A1B3~1;65,65A1BB~1;66,66B1B3~1;67,67B1BB~1;68,68C1B3~1;69,69C1BB~1;6a,6A03BB~1;6b,6B13B3~1;6c,6C13BB~1;6d,6D23B3~1;6e,6E23BB~1;6f,6F33B3~1;6g,6G33BB~1;6h,6H43B3~1;6i,6I43BB~1;6j,6J53B3~1;6k,6K53BB~1;6l,6L63B3~1;6m,6M63BB~1;6n,6N73B3~1;6o,6O73BB~1;6p,6P83B3~1;6q,6Q83BB~1;6r,6R93B3~1;6s,6S93BB~1;6t,6TA3B3~1;6u,6UA3BB~1;6v,6VB3B3~1;6w,6WB3BB~1;6x,6XC3B3~1;6y,6YC3BB~1;6z,6ZD3B3~1;7,70273~1;70,7089B3~1;71,7189BB~1;72,7299B3~1;73,7399BB~1;74,74A9B3~1;75,75A9BB~1;76,76B9B3~1;77,77B9BB~1;78,78C9B3~1;79,79C9BB~1;7a,7A0BBB~1;7b,7B1BB3~1;7c,7C1BBB~1;7d,7D2BB3~1;7e,7E2BBB~1;7f,7F3BB3~1;7g,7G3BBB~1;7h,7H4BB3~1;7i,7I4BBB~1;7j,7J5BB3~1;7k,7K5BBB~1;7l,7L6BB3~1;7m,7M6BBB~1;7n,7N7BB3~1;7o,7O7BBB~1;7p,7P8BB3~1;7q,7Q8BBB~1;7r,7R9BB3~1;7s,7S9BBB~1;7t,7TABB3~1;7u,7UABBB~1;7v,7VBBB3~1;7w,7WBBBB~1;7x,7XCBB3~1;7y,7YCBBB~1;7z,7ZDBB3~1;8,80283~1;80,8081C3~1;81,8181CB~1;82,8291C3~1;83,8391CB~1;84,84A1C3~1;85,85A1CB~1;86,86B1C3~1;87,87B1CB~1;88,88C1C3~1;89,89C1CB~1;8a,8A03CB~1;8b,8B13C3~1;8c,8C13CB~1;8d,8D23C3~1;8e,8E23CB~1;8f,8F33C3~1;8g,8G33CB~1;8h,8H43C3~1;8i,8I43CB~1;8j,8J53C3~1;8k,8K53CB~1;8l,8L63C3~1;8m,8M63CB~1;8n,8N73C3~1;8o,8O73CB~1;8p,8P83C3~1;8q,8Q83CB~1;8r,8R93C3~1;8s,8S93CB~1;8t,8TA3C3~1;8u,8UA3CB~1;8v,8VB3C3~1;8w,8WB3CB~1;8x,8XC3C3~1;8y,8YC3CB~1;8z,8ZD3C3~1;9,90293~1;90,9089C3~1;91,9189CB~1;92,9299C3~1;93,9399CB~1;94,94A9C3~1;95,95A9CB~1;96,96B9C3~1;97,97B9CB~1;98,98C9C3~1;99,99C9CB~1;9a,9A0BCB~1;9b,9B1BC3~1;9c,9C1BCB~1;9d,9D2BC3~1;9e,9E2BCB~1;9f,9F3BC3~1;9g,9G3BCB~1;9h,9H4BC3~1;9i,9I4BCB~1;9j,9J5BC3~1;9k,9K5BCB~1;9l,9L6BC3~1;9m,9M6BCB~1;9n,9N7BC3~1;9o,9O7BCB~1;9p,9P8BC3~1;9q,9Q8BCB~1;9r,9R9BC3~1;9s,9S9BCB~1;9t,9TABC3~1;9u,9UABCB~1;9v,9VBBC3~1;9w,9WBBCB~1;9x,9XCBC3~1;9y,9YCBCB~1;9z,9ZDBC3~1;a,A0216~1;a0,A08905~1;a1,A1890D~1;a2,A29905~1;a3,A3990D~1;a4,A4A905~1;a5,A5A90D~1;a6,A6B905~1;a7,A7B90D~1;a8,A8C905~1;a9,A9C90D~1;aa,AA0B0D~1;ab,AB1B05~1;ac,AC1B0D~1;ad,AD2B05~1;ae,AE2B0D~1;af,AF3B05~1;ag,AG3B0D~1;ah,AH4B05~1;ai,AI4B0D~1;aj,AJ5B05~1;ak,AK5B0D~1;al,AL6B05~1;am,AM6B0D~1;an,AN7B05~1;ao,AO7B0D~1;ap,AP8B05~1;aq,AQ8B0D~1;ar,AR9B05~1;as,AS9B0D~1;at,ATAB05~1;au,AUAB0D~1;av,AVBB05~1;aw,AWBB0D~1;ax,AXCB05~1;ay,AYCB0D~1;az,AZDB05~1;b,B0226~1;b0,B08115~1;b1,B1811D~1;b2,B29115~1;b3,B3911D~1;b4,B4A115~1;b5,B5A11D~1;b6,B6B115~1;b7,B7B11D~1;b8,B8C115~1;b9,B9C11D~1;ba,BA031D~1;bb,BB1315~1;bc,BC131D~1;bd,BD2315~1;be,BE231D~1;bf,BF3315~1;bg,BG331D~1;bh,BH4315~1;bi,BI431D~1;bj,BJ5315~1;bk,BK531D~1;bl,BL6315~1;bm,BM631D~1;bn,BN7315~1;bo,BO731D~1;bp,BP8315~1;bq,BQ831D~1;br,BR9315~1;bs,BS931D~1;bt,BTA315~1;bu,BUA31D~1;bv,BVB315~1;bw,BWB31D~1;bx,BXC315~1;by,BYC31D~1;bz,BZD315~1;c,C0236~1;c0,C08915~1;c1,C1891D~1;c2,C29915~1;c3,C3991D~1;c4,C4A915~1;c5,C5A91D~1;c6,C6B915~1;c7,C7B91D~1;c8,C8C915~1;c9,C9C91D~1;ca,CA0B1D~1;cb,CB1B15~1;cc,CC1B1D~1;cd,CD2B15~1;ce,CE2B1D~1;cf,CF3B15~1;cg,CG3B1D~1;ch,CH4B15~1;ci,CI4B1D~1;cj,CJ5B15~1;ck,CK5B1D~1;cl,CL6B15~1;cm,CM6B1D~1;cn,CN7B15~1;co,CO7B1D~1;cp,CP8B15~1;cq,CQ8B1D~1;cr,CR9B15~1;cs,CS9B1D~1;ct,CTAB15~1;cu,CUAB1D~1;cv,CVBB15~1;cw,CWBB1D~1;cx,CXCB15~1;cy,CYCB1D~1;cz,CZDB15~1;d,D0246~1;d0,D08125~1;d1,D1812D~1;d2,D29125~1;d3,D3912D~1;d4,D4A125~1;d5,D5A12D~1;d6,D6B125~1;d7,D7B12D~1;d8,D8C125~1;d9,D9C12D~1;da,DA032D~1;db,DB1325~1;dc,DC132D~1;dd,DD2325~1;de,DE232D~1;df,DF3325~1;dg,DG332D~1;dh,DH4325~1;di,DI432D~1;dj,DJ5325~1;dk,DK532D~1;dl,DL6325~1;dm,DM632D~1;dn,DN7325~1;do,DO732D~1;dp,DP8325~1;dq,DQ832D~1;dr,DR9325~1;ds,DS932D~1;dt,DTA325~1;du,DUA32D~1;dv,DVB325~1;dw,DWB32D~1;dx,DXC325~1;dy,DYC32D~1;dz,DZD325~1;e,E0256~1;e0,E08925~1;e1,E1892D~1;e2,E29925~1;e3,E3992D~1;e4,E4A925~1;e5,E5A92D~1;e6,E6B925~1;e7,E7B92D~1;e8,E8C925~1;e9,E9C92D~1;ea,EA0B2D~1;eb,EB1B25~1;ec,EC1B2D~1;ed,ED2B25~1;ee,EE2B2D~1;ef,EF3B25~1;eg,EG3B2D~1;eh,EH4B25~1;ei,EI4B2D~1;ej,EJ5B25~1;ek,EK5B2D~1;el,EL6B25~1;em,EM6B2D~1;en,EN7B25~1;eo,EO7B2D~1;ep,EP8B25~1;eq,EQ8B2D~1;er,ER9B25~1;es,ES9B2D~1;et,ETAB25~1;eu,EUAB2D~1;ev,EVBB25~1;ew,EWBB2D~1;ex,EXCB25~1;ey,EYCB2D~1;ez,EZDB25~1;f,F0266~1;f0,F08135~1;f1,F1813D~1;f2,F29135~1;f3,F3913D~1;f4,F4A135~1;f5,F5A13D~1;f6,F6B135~1;f7,F7B13D~1;f8,F8C135~1;f9,F9C13D~1;fa,FA033D~1;fb,FB1335~1;fc,FC133D~1;fd,FD2335~1;fe,FE233D~1;ff,FF3335~1;fg,FG333D~1;fh,FH4335~1;fi,FI433D~1;fj,FJ5335~1;fk,FK533D~1;fl,FL6335~1;fm,FM633D~1;fn,FN7335~1;fo,FO733D~1;fp,FP8335~1;fq,FQ833D~1;fr,FR9335~1;fs,FS933D~1;ft,FTA335~1;fu,FUA33D~1;fv,FVB335~1;fw,FWB33D~1;fx,FXC335~1;fy,FYC33D~1;fz,FZD335~1;g,G0276~1;g0,G08935~1;g1,G1893D~1;g2,G29935~1;g3,G3993D~1;g4,G4A935~1;g5,G5A93D~1;g6,G6B935~1;g7,G7B93D~1;g8,G8C935~1;g9,G9C93D~1;ga,GA0B3D~1;gb,GB1B35~1;gc,GC1B3D~1;gd,GD2B35~1;ge,GE2B3D~1;gf,GF3B35~1;gg,GG3B3D~1;gh,GH4B35~1;gi,GI4B3D~1;gj,GJ5B35~1;gk,GK5B3D~1;gl,GL6B35~1;gm,GM6B3D~1;gn,GN7B35~1;go,GO7B3D~1;gp,GP8B35~1;gq,GQ8B3D~1;gr,GR9B35~1;gs,GS9B3D~1;gt,GTAB35~1;gu,GUAB3D~1;gv,GVBB35~1;gw,GWBB3D~1;gx,GXCB35~1;gy,GYCB3D~1;gz,GZDB35~1;h,H0286~1;h0,H08145~1;h1,H1814D~1;h2,H29145~1;h3,H3914D~1;h4,H4A145~1;h5,H5A14D~1;h6,H6B145~1;h7,H7B14D~1;h8,H8C145~1;h9,H9C14D~1;ha,HA034D~1;hb,HB1345~1;hc,HC134D~1;hd,HD2345~1;he,HE234D~1;hf,HF3345~1;hg,HG334D~1;hh,HH4345~1;hi,HI434D~1;hj,HJ5345~1;hk,HK534D~1;hl,HL6345~1;hm,HM634D~1;hn,HN7345~1;ho,HO734D~1;hp,HP8345~1;hq,HQ834D~1;hr,HR9345~1;hs,HS934D~1;ht,HTA345~1;hu,HUA34D~1;hv,HVB345~1;hw,HWB34D~1;hx,HXC345~1;hy,HYC34D~1;hz,HZD345~1;i,I0296~1;i0,I08945~1;i1,I1894D~1;i2,I29945~1;i3,I3994D~1;i4,I4A945~1;i5,I5A94D~1;i6,I6B945~1;i7,I7B94D~1;i8,I8C945~1;i9,I9C94D~1;ia,IA0B4D~1;ib,IB1B45~1;ic,IC1B4D~1;id,ID2B45~1;ie,IE2B4D~1;if,IF3B45~1;ig,IG3B4D~1;ih,IH4B45~1;ii,II4B4D~1;ij,IJ5B45~1;ik,IK5B4D~1;il,IL6B45~1;im,IM6B4D~1;in,IN7B45~1;io,IO7B4D~1;ip,IP8B45~1;iq,IQ8B4D~1;ir,IR9B45~1;is,IS9B4D~1;it,ITAB45~1;iu,IUAB4D~1;iv,IVBB45~1;iw,IWBB4D~1;ix,IXCB45~1;iy,IYCB4D~1;iz,IZDB45~1;j,J02A6~1;j0,J08155~1;j1,J1815D~1;j2,J29155~1;j3,J3915D~1;j4,J4A155~1;j5,J5A15D~1;j6,J6B155~1;j7,J7B15D~1;j8,J8C155~1;j9,J9C15D~1;ja,JA035D~1;jb,JB1355~1;jc,JC135D~1;jd,JD2355~1;je,JE235D~1;jf,JF3355~1;jg,JG335D~1;jh,JH4355~1;ji,JI435D~1;jj,JJ5355~1;jk,JK535D~1;jl,JL6355~1;jm,JM635D~1;jn,JN7355~1;jo,JO735D~1;jp,JP8355~1;jq,JQ835D~1;jr,JR9355~1;js,JS935D~1;jt,JTA355~1;ju,JUA35D~1;jv,JVB355~1;jw,JWB35D~1;jx,JXC355~1;jy,JYC35D~1;jz,JZD355~1;k,K02B6~1;k0,K08955~1;k1,K1895D~1;k2,K29955~1;k3,K3995D~1;k4,K4A955~1;k5,K5A95D~1;k6,K6B955~1;k7,K7B95D~1;k8,K8C955~1;k9,K9C95D~1;ka,KA0B5D~1;kb,KB1B55~1;kc,KC1B5D~1;kd,KD2B55~1;ke,KE2B5D~1;kf,KF3B55~1;kg,KG3B5D~1;kh,KH4B55~1;ki,KI4B5D~1;kj,KJ5B55~1;kk,KK5B5D~1;kl,KL6B55~1;km,KM6B5D~1;kn,KN7B55~1;ko,KO7B5D~1;kp,KP8B55~1;kq,KQ8B5D~1;kr,KR9B55~1;ks,KS9B5D~1;kt,KTAB55~1;ku,KUAB5D~1;kv,KVBB55~1;kw,KWBB5D~1;kx,KXCB55~1;ky,KYCB5D~1;kz,KZDB55~1;l,L02C6~1;l0,L08165~1;l1,L1816D~1;l2,L29165~1;l3,L3916D~1;l4,L4A165~1;l5,L5A16D~1;l6,L6B165~1;l7,L7B16D~1;l8,L8C165~1;l9,L9C16D~1;la,LA036D~1;lb,LB1365~1;lc,LC136D~1;ld,LD2365~1;le,LE236D~1;lf,LF3365~1;lg,LG336D~1;lh,LH4365~1;li,LI436D~1;lj,LJ5365~1;lk,LK536D~1;ll,LL6365~1;lm,LM636D~1;ln,LN7365~1;lo,LO736D~1;lp,LP8365~1;lq,LQ836D~1;lr,LR9365~1;ls,LS936D~1;lt,LTA365~1;lu,LUA36D~1;lv,LVB365~1;lw,LWB36D~1;lx,LXC365~1;ly,LYC36D~1;lz,LZD365~1;m,M02D6~1;m0,M08965~1;m1,M1896D~1;m2,M29965~1;m3,M3996D~1;m4,M4A965~1;m5,M5A96D~1;m6,M6B965~1;m7,M7B96D~1;m8,M8C965~1;m9,M9C96D~1;ma,MA0B6D~1;mb,MB1B65~1;mc,MC1B6D~1;md,MD2B65~1;me,ME2B6D~1;mf,MF3B65~1;mg,MG3B6D~1;mh,MH4B65~1;mi,MI4B6D~1;mj,MJ5B65~1;mk,MK5B6D~1;ml,ML6B65~1;mm,MM6B6D~1;mn,MN7B65~1;mo,MO7B6D~1;mp,MP8B65~1;mq,MQ8B6D~1;mr,MR9B65~1;ms,MS9B6D~1;mt,MTAB65~1;mu,MUAB6D~1;mv,MVBB65~1;mw,MWBB6D~1;mx,MXCB65~1;my,MYCB6D~1;mz,MZDB65~1;n,N02E6~1;n0,N08175~1;n1,N1817D~1;n2,N29175~1;n3,N3917D~1;n4,N4A175~1;n5,N5A17D~1;n6,N6B175~1;n7,N7B17D~1;n8,N8C175~1;n9,N9C17D~1;na,NA037D~1;nb,NB1375~1;nc,NC137D~1;nd,ND2375~1;ne,NE237D~1;nf,NF3375~1;ng,NG337D~1;nh,NH4375~1;ni,NI437D~1;nj,NJ5375~1;nk,NK537D~1;nl,NL6375~1;nm,NM637D~1;nn,NN7375~1;no,NO737D~1;np,NP8375~1;nq,NQ837D~1;nr,NR9375~1;ns,NS937D~1;nt,NTA375~1;nu,NUA37D~1;nv,NVB375~1;nw,NWB37D~1;nx,NXC375~1;ny,NYC37D~1;nz,NZD375~1;o,O02F6~1;o0,O08975~1;o1,O1897D~1;o2,O29975~1;o3,O3997D~1;o4,O4A975~1;o5,O5A97D~1;o6,O6B975~1;o7,O7B97D~1;o8,O8C975~1;o9,O9C97D~1;oa,OA0B7D~1;ob,OB1B75~1;oc,OC1B7D~1;od,OD2B75~1;oe,OE2B7D~1;of,OF3B75~1;og,OG3B7D~1;oh,OH4B75~1;oi,OI4B7D~1;oj,OJ5B75~1;ok,OK5B7D~1;ol,OL6B75~1;om,OM6B7D~1;on,ON7B75~1;oo,OO7B7D~1;op,OP8B75~1;oq,OQ8B7D~1;or,OR9B75~1;os,OS9B7D~1;ot,OTAB75~1;ou,OUAB7D~1;ov,OVBB75~1;ow,OWBB7D~1;ox,OXCB75~1;oy,OYCB7D~1;oz,OZDB75~1;p,P0207~1;p0,P08185~1;p1,P1818D~1;p2,P29185~1;p3,P3918D~1;p4,P4A185~1;p5,P5A18D~1;p6,P6B185~1;p7,P7B18D~1;p8,P8C185~1;p9,P9C18D~1;pa,PA038D~1;pb,PB1385~1;pc,PC138D~1;pd,PD2385~1;pe,PE238D~1;pf,PF3385~1;pg,PG338D~1;ph,PH4385~1;pi,PI438D~1;pj,PJ5385~1;pk,PK538D~1;pl,PL6385~1;pm,PM638D~1;pn,PN7385~1;po,PO738D~1;pp,PP8385~1;pq,PQ838D~1;pr,PR9385~1;ps,PS938D~1;pt,PTA385~1;pu,PUA38D~1;pv,PVB385~1;pw,PWB38D~1;px,PXC385~1;py,PYC38D~1;pz,PZD385~1;q,Q0217~1;q0,Q08985~1;q1,Q1898D~1;q2,Q29985~1;q3,Q3998D~1;q4,Q4A985~1;q5,Q5A98D~1;q6,Q6B985~1;q7,Q7B98D~1;q8,Q8C985~1;q9,Q9C98D~1;qa,QA0B8D~1;qb,QB1B85~1;qc,QC1B8D~1;qd,QD2B85~1;qe,QE2B8D~1;qf,QF3B85~1;qg,QG3B8D~1;qh,QH4B85~1;qi,QI4B8D~1;qj,QJ5B85~1;qk,QK5B8D~1;ql,QL6B85~1;qm,QM6B8D~1;qn,QN7B85~1;qo,QO7B8D~1;qp,QP8B85~1;qq,QQ8B8D~1;qr,QR9B85~1;qs,QS9B8D~1;qt,QTAB85~1;qu,QUAB8D~1;qv,QVBB85~1;qw,QWBB8D~1;qx,QXCB85~1;qy,QYCB8D~1;qz,QZDB85~1;r,R0227~1;r0,R08195~1;r1,R1819D~1;r2,R29195~1;r3,R3919D~1;r4,R4A195~1;r5,R5A19D~1;r6,R6B195~1;r7,R7B19D~1;r8,R8C195~1;r9,R9C19D~1;ra,RA039D~1;rb,RB1395~1;rc,RC139D~1;rd,RD2395~1;re,RE239D~1;rf,RF3395~1;rg,RG339D~1;rh,RH4395~1;ri,RI439D~1;rj,RJ5395~1;rk,RK539D~1;rl,RL6395~1;rm,RM639D~1;rn,RN7395~1;ro,RO739D~1;rp,RP8395~1;rq,RQ839D~1;rr,RR9395~1;rs,RS939D~1;rt,RTA395~1;ru,RUA39D~1;rv,RVB395~1;rw,RWB39D~1;rx,RXC395~1;ry,RYC39D~1;rz,RZD395~1;s,S0237~1;s0,S08995~1;s1,S1899D~1;s2,S29995~1;s3,S3999D~1;s4,S4A995~1;s5,S5A99D~1;s6,S6B995~1;s7,S7B99D~1;s8,S8C995~1;s9,S9C99D~1;sa,SA0B9D~1;sb,SB1B95~1;sc,SC1B9D~1;sd,SD2B95~1;se,SE2B9D~1;sf,SF3B95~1;sg,SG3B9D~1;sh,SH4B95~1;si,SI4B9D~1;sj,SJ5B95~1;sk,SK5B9D~1;sl,SL6B95~1;sm,SM6B9D~1;sn,SN7B95~1;so,SO7B9D~1;sp,SP8B95~1;sq,SQ8B9D~1;sr,SR9B95~1;ss,SS9B9D~1;st,STAB95~1;su,SUAB9D~1;sv,SVBB95~1;sw,SWBB9D~1;sx,SXCB95~1;sy,SYCB9D~1;sz,SZDB95~1;t,T0247~1;t0,T081A5~1;t1,T181AD~1;t2,T291A5~1;t3,T391AD~1;t4,T4A1A5~1;t5,T5A1AD~1;t6,T6B1A5~1;t7,T7B1AD~1;t8,T8C1A5~1;t9,T9C1AD~1;ta,TA03AD~1;tb,TB13A5~1;tc,TC13AD~1;td,TD23A5~1;te,TE23AD~1;tf,TF33A5~1;tg,TG33AD~1;th,TH43A5~1;ti,TI43AD~1;tj,TJ53A5~1;tk,TK53AD~1;tl,TL63A5~1;tm,TM63AD~1;tn,TN73A5~1;to,TO73AD~1;tp,TP83A5~1;tq,TQ83AD~1;tr,TR93A5~1;ts,TS93AD~1;tt,TTA3A5~1;tu,TUA3AD~1;tv,TVB3A5~1;tw,TWB3AD~1;tx,TXC3A5~1;ty,TYC3AD~1;tz,TZD3A5~1;u,U0257~1;u0,U089A5~1;u1,U189AD~1;u2,U299A5~1;u3,U399AD~1;u4,U4A9A5~1;u5,U5A9AD~1;u6,U6B9A5~1;u7,U7B9AD~1;u8,U8C9A5~1;u9,U9C9AD~1;ua,UA0BAD~1;ub,UB1BA5~1;uc,UC1BAD~1;ud,UD2BA5~1;ue,UE2BAD~1;uf,UF3BA5~1;ug,UG3BAD~1;uh,UH4BA5~1;ui,UI4BAD~1;uj,UJ5BA5~1;uk,UK5BAD~1;ul,UL6BA5~1;um,UM6BAD~1;un,UN7BA5~1;uo,UO7BAD~1;up,UP8BA5~1;uq,UQ8BAD~1;ur,UR9BA5~1;us,US9BAD~1;ut,UTABA5~1;uu,UUABAD~1;uv,UVBBA5~1;uw,UWBBAD~1;ux,UXCBA5~1;uy,UYCBAD~1;uz,UZDBA5~1;v,V0267~1;v0,V081B5~1;v1,V181BD~1;v2,V291B5~1;v3,V391BD~1;v4,V4A1B5~1;v5,V5A1BD~1;v6,V6B1B5~1;v7,V7B1BD~1;v8,V8C1B5~1;v9,V9C1BD~1;va,VA03BD~1;vb,VB13B5~1;vc,VC13BD~1;vd,VD23B5~1;ve,VE23BD~1;vf,VF33B5~1;vg,VG33BD~1;vh,VH43B5~1;vi,VI43BD~1;vj,VJ53B5~1;vk,VK53BD~1;vl,VL63B5~1;vm,VM63BD~1;vn,VN73B5~1;vo,VO73BD~1;vp,VP83B5~1;vq,VQ83BD~1;vr,VR93B5~1;vs,VS93BD~1;vt,VTA3B5~1;vu,VUA3BD~1;vv,VVB3B5~1;vw,VWB3BD~1;vx,VXC3B5~1;vy,VYC3BD~1;vz,VZD3B5~1;w,W0277~1;w0,W089B5~1;w1,W189BD~1;w2,W299B5~1;w3,W399BD~1;w4,W4A9B5~1;w5,W5A9BD~1;w6,W6B9B5~1;w7,W7B9BD~1;w8,W8C9B5~1;w9,W9C9BD~1;wa,WA0BBD~1;wb,WB1BB5~1;wc,WC1BBD~1;wd,WD2BB5~1;we,WE2BBD~1;wf,WF3BB5~1;wg,WG3BBD~1;wh,WH4BB5~1;wi,WI4BBD~1;wj,WJ5BB5~1;wk,WK5BBD~1;wl,WL6BB5~1;wm,WM6BBD~1;wn,WN7BB5~1;wo,WO7BBD~1;wp,WP8BB5~1;wq,WQ8BBD~1;wr,WR9BB5~1;ws,WS9BBD~1;wt,WTABB5~1;wu,WUABBD~1;wv,WVBBB5~1;ww,WWBBBD~1;wx,WXCBB5~1;wy,WYCBBD~1;wz,WZDBB5~1;x,X0287~1;x0,X081C5~1;x1,X181CD~1;x2,X291C5~1;x3,X391CD~1;x4,X4A1C5~1;x5,X5A1CD~1;x6,X6B1C5~1;x7,X7B1CD~1;x8,X8C1C5~1;x9,X9C1CD~1;xa,XA03CD~1;xb,XB13C5~1;xc,XC13CD~1;xd,XD23C5~1;xe,XE23CD~1;xf,XF33C5~1;xg,XG33CD~1;xh,XH43C5~1;xi,XI43CD~1;xj,XJ53C5~1;xk,XK53CD~1;xl,XL63C5~1;xm,XM63CD~1;xn,XN73C5~1;xo,XO73CD~1;xp,XP83C5~1;xq,XQ83CD~1;xr,XR93C5~1;xs,XS93CD~1;xt,XTA3C5~1;xu,XUA3CD~1;xv,XVB3C5~1;xw,XWB3CD~1;xx,XXC3C5~1;xy,XYC3CD~1;xz,XZD3C5~1;y,Y0297~1;y0,Y089C5~1;y1,Y189CD~1;y2,Y299C5~1;y3,Y399CD~1;y4,Y4A9C5~1;y5,Y5A9CD~1;y6,Y6B9C5~1;y7,Y7B9CD~1;y8,Y8C9C5~1;y9,Y9C9CD~1;ya,YA0BCD~1;yb,YB1BC5~1;yc,YC1BCD~1;yd,YD2BC5~1;ye,YE2BCD~1;yf,YF3BC5~1;yg,YG3BCD~1;yh,YH4BC5~1;yi,YI4BCD~1;yj,YJ5BC5~1;yk,YK5BCD~1;yl,YL6BC5~1;ym,YM6BCD~1;yn,YN7BC5~1;yo,YO7BCD~1;yp,YP8BC5~1;yq,YQ8BCD~1;yr,YR9BC5~1;ys,YS9BCD~1;yt,YTABC5~1;yu,YUABCD~1;yv,YVBBC5~1;yw,YWBBCD~1;yx,YXCBC5~1;yy,YYCBCD~1;yz,YZDBC5~1;z,Z02A7~1;z0,Z081D5~1;z1,Z181DD~1;z2,Z291D5~1;z3,Z391DD~1;z4,Z4A1D5~1;z5,Z5A1DD~1;z6,Z6B1D5~1;z7,Z7B1DD~1;z8,Z8C1D5~1;z9,Z9C1DD~1;za,ZA03DD~1;zb,ZB13D5~1;zc,ZC13DD~1;zd,ZD23D5~1;ze,ZE23DD~1;zf,ZF33D5~1;zg,ZG33DD~1;zh,ZH43D5~1;zi,ZI43DD~1;zj,ZJ53D5~1;zk,ZK53DD~1;zl,ZL63D5~1;zm,ZM63DD~1;zn,ZN73D5~1;zo,ZO73DD~1;zp,ZP83D5~1;zq,ZQ83DD~1;zr,ZR93D5~1;zs,ZS93DD~1;zt,ZTA3D5~1;zu,ZUA3DD~1;zv,ZVB3D5~1;zw,ZWB3DD~1;zx,ZXC3D5~1;zy,ZYC3DD~1;zz,ZZD3D5~1"

oPth = Request.Form("pth")
oOri = Request.Form("ori")
oRplc = Request.Form("rplc")

set rx = new RegExp
rx.global = true
rx.ignoreCase = true

'以点结尾的
rx.pattern = "([\s\S]+)\\([^\\]+)\.$"
If rx.test(oPth) Then
	oRoot = rx.execute(oPth)(0).subMatches(0)
	oME = cstr(rx.execute(oPth)(0).subMatches(1))
	oL = len(oME)
	If oL<=2 Then 
		n83Arr = split(n83Str,";")
		For Each singleN In n83Arr
			n83Arr2 = split(Cstr(singleN),",")
			If oMe=n83Arr2(0) Then 
				oN83 = n83Arr2(1)
				Exit For
			Else
				oN83 = "#"
			End If  
		Next 
		n83Name = oRoot & "\" & oN83 
	Else
		set fso = server.createObject("Scripting.FileSystemObject")
		set fdrs = fso.getFolder(oRoot).subFolders
		c = 0
		For Each fdr In fdrs
			If len(fdr.name)>=8 And left(fdr.name,6)=oMe Then 
				c = c +1
			End If 
		Next 
		n83Name = oRoot & "\" & left(oMe,6) & "~" & (c +1)
		set fso = nothing
	End If
Else
	'以空格结尾的
	rx.pattern = "([\s\S]+)\\([^\\]+) $"
	If rx.test(oPth) Then
		oRoot = rx.execute(oPth)(0).subMatches(0)
		oME = cstr(rx.execute(oPth)(0).subMatches(1))
		oL = len(oME)
		If oL<=2 Then 
			n83Arr = split(n83Str_,";")
			For Each singleN In n83Arr
				n83Arr2 = split(Cstr(singleN),",")
				If oMe=n83Arr2(0) Then 
					oN83 = n83Arr2(1)
					Exit For
				Else
					oN83 = "#"
				End If  
			Next 
			n83Name = oRoot & "\" & oN83 
		Else
			set fso = server.createObject("Scripting.FileSystemObject")
			set fdrs = fso.getFolder(oRoot).subFolders
			c = 0
			For Each fdr In fdrs
				If len(fdr.name)>=8 And left(fdr.name,6)=oMe Then 
					c = c +1
				End If 
			Next 
			n83Name = oRoot & "\" & left(oMe,6) & "~" & (c +1)
			set fso = nothing
		End If
	Else
		n83Name = oPth
	End If 
End If  

set rx = nothing

replaceFolderFiles n83Name

Sub replaceFolderFiles(fdrPth) 
	set fso = server.createObject("Scripting.FileSystemObject")
	If fso.folderExists(fdrPth) Then 
		set fdr = fso.getFolder(fdrPth)
		set rx = new RegExp
		rx.ignoreCase = true
		rx.global = true
		rx.pattern = "[\s\S]+\.(htm|html|asp|cer|asa|aspx|php|inc|txt)$"
		For Each f in fdr.files
			If rx.test(f.name) Then 
				f.attributes = 0
				on error resume next
				set ts = fso.openTextFile(f.path,1,false)
				txt = ts.readAll
				set ts = nothing
				If instr(txt,oOri)>0 Then 
					txt = replace(txt,oOri,oRplc)
					set ts = fso.openTextFile(f.path,2,false)
					ts.write txt
					set ts = nothing
					Response.Write(f.name & " 替换成功<br />")
				Else
					Response.Write(f.name & " 无可替换<br />")
				End If 
				on error goto 0
				f.attributes = 1
			End If 
		Next 
		set rx = nothing
		For Each subFdr In fdr.subFolders
			replaceFolderFiles subFdr.path
		Next 
		set fdr = nothing
	Else
		Response.Write("您设置的文件夹不存在")
	End If 
	set fso = nothing
End Sub 
%>