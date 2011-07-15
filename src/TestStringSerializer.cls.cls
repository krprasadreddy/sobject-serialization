



<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico">
 
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = "84c905b48fa2b5d335fc01e3f2809661";
 
 
 var CS_env = {"token":"84c905b48fa2b5d335fc01e3f2809661","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/8169703206223286781","projectName":"sobject-serialization","projectHomeUrl":"/p/sobject-serialization","absoluteBaseUrl":"http://code.google.com","relativeBaseUrl":"","urlPrefix":"p","loggedInUserEmail":"s.m.goodyear@gmail.com"};
 var _gaq = _gaq || [];
 _gaq.push(
 ['siteTracker._setAccount', 'UA-18071-1'],
 ['siteTracker._trackPageview']);
 
 _gaq.push(
 ['projectTracker._setAccount', 'UA-23861757-1'],
 ['projectTracker._trackPageview']);
 
 </script>
 
 
 <title>TestStringSerializer.cls - 
 sobject-serialization -
 
 
 Various methods of serializing sObjects in SalesForce - Google Project Hosting
 </title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" >
 
 <meta name="ROBOTS" content="NOARCHIVE">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/8169703206223286781/css/ph_core.css">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/8169703206223286781/css/ph_detail.css" >
 
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/8169703206223286781/css/d_sb.css" >
 
 
 
<!--[if IE]>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/8169703206223286781/css/d_ie.css" >
<![endif]-->
 <style type="text/css">
 .menuIcon.off { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -42px }
 .menuIcon.on { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -28px }
 .menuIcon.down { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 0; }
 
 
 
  tr.inline_comment {
 background: #fff;
 vertical-align: top;
 }
 div.draft, div.published {
 padding: .3em;
 border: 1px solid #999; 
 margin-bottom: .1em;
 font-family: arial, sans-serif;
 max-width: 60em;
 }
 div.draft {
 background: #ffa;
 } 
 div.published {
 background: #e5ecf9;
 }
 div.published .body, div.draft .body {
 padding: .5em .1em .1em .1em;
 max-width: 60em;
 white-space: pre-wrap;
 white-space: -moz-pre-wrap;
 white-space: -pre-wrap;
 white-space: -o-pre-wrap;
 word-wrap: break-word;
 font-size: 1em;
 }
 div.draft .actions {
 margin-left: 1em;
 font-size: 90%;
 }
 div.draft form {
 padding: .5em .5em .5em 0;
 }
 div.draft textarea, div.published textarea {
 width: 95%;
 height: 10em;
 font-family: arial, sans-serif;
 margin-bottom: .5em;
 }

 
 .nocursor, .nocursor td, .cursor_hidden, .cursor_hidden td {
 background-color: white;
 height: 2px;
 }
 .cursor, .cursor td {
 background-color: darkblue;
 height: 2px;
 display: '';
 }
 
 
.list {
 border: 1px solid white;
 border-bottom: 0;
}

 </style>
</head>
<body class="t4">
<script type="text/javascript">
 (function() {
 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
 ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
 (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
 })();
</script>
<div class="headbg">
 <div id="gaia">
 

 <span>
 
 
 <a href="#" id="multilogin-dropdown" onclick="return false;"
 ><u><b>s.m.goodyear@gmail.com</b></u> <small>&#9660;</small></a>
 
 
 | <a href="/u/@UBBfS1JXBxdDWgB1/" id="projects-dropdown" onclick="return false;"
 ><u>My favorites</u> <small>&#9660;</small></a>
 | <a href="/u/@UBBfS1JXBxdDWgB1/" onclick="_CS_click('/gb/ph/profile');"
 title="Profile, Updates, and Settings"
 ><u>Profile</u></a>
 | <a href="https://www.google.com/accounts/Logout?continue=http%3A%2F%2Fcode.google.com%2Fp%2Fsobject-serialization%2Fsource%2Fbrowse%2Ftrunk%2Fsrc%2Fclasses%2FTestStringSerializer.cls" 
 onclick="_CS_click('/gb/ph/signout');"
 ><u>Sign out</u></a>
 
 </span>

 </div>
 <div class="gbh" style="left: 0pt;"></div>
 <div class="gbh" style="right: 0pt;"></div>
 
 
 <div style="height: 1px"></div>
<!--[if lte IE 7]>
<div style="text-align:center;">
Your version of Internet Explorer is not supported. Try a browser that
contributes to open source, such as <a href="http://www.firefox.com">Firefox</a>,
<a href="http://www.google.com/chrome">Google Chrome</a>, or
<a href="http://code.google.com/chrome/chromeframe/">Google Chrome Frame</a>.
</div>
<![endif]-->




 <table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0">
 <tr style="height: 58px;">
 
 <td id="plogo">
 <a href="/p/sobject-serialization/">
 
 <img src="http://www.gstatic.com/codesite/ph/images/defaultlogo.png" alt="Logo">
 
 </a>
 </td>
 
 <td style="padding-left: 0.5em">
 
 <div id="pname">
 <a href="/p/sobject-serialization/">sobject-serialization</a>
 </div>
 
 <div id="psum">
 <a id="project_summary_link" href="/p/sobject-serialization/" >Various methods of serializing sObjects in SalesForce</a>
 
 </div>
 
 
 </td>
 <td style="white-space:nowrap;text-align:right; vertical-align:bottom;">
 
 <form action="/hosting/search">
 <input size="30" name="q" value="" type="text">
 
 <input type="submit" name="projectsearch" value="Search projects" >
 </form>
 
 </tr>
 </table>

</div>

 
<div id="mt" class="gtb"> 
 <a href="/p/sobject-serialization/" class="tab ">Project&nbsp;Home</a>
 
 
 
 
 <a href="/p/sobject-serialization/downloads/list" class="tab ">Downloads</a>
 
 
 
 
 
 <a href="/p/sobject-serialization/w/list" class="tab ">Wiki</a>
 
 
 
 
 
 <a href="/p/sobject-serialization/issues/list"
 class="tab ">Issues</a>
 
 
 
 
 
 <a href="/p/sobject-serialization/source/checkout"
 class="tab active">Source</a>
 
 
 
 
 
 <div class=gtbc></div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="st">
 <tr>
 
 
 
 
 
 
 <td class="subt">
 <div class="st2">
 <div class="isf">
 
 
 
 <span class="inst1"><a href="/p/sobject-serialization/source/checkout">Checkout</a></span> &nbsp;
 <span class="inst2"><a href="/p/sobject-serialization/source/browse/">Browse</a></span> &nbsp;
 <span class="inst3"><a href="/p/sobject-serialization/source/list">Changes</a></span> &nbsp;
 
 <form action="http://www.google.com/codesearch" method="get" style="display:inline"
 onsubmit="document.getElementById('codesearchq').value = document.getElementById('origq').value + ' package:http://sobject-serialization\\.googlecode\\.com'">
 <input type="hidden" name="q" id="codesearchq" value="">
 <input type="text" maxlength="2048" size="38" id="origq" name="origq" value="" title="Google Code Search" style="font-size:92%">&nbsp;<input type="submit" value="Search Trunk" name="btnG" style="font-size:92%">
 
 
 
 </form>
 </div>
</div>

 </td>
 
 
 
 <td align="right" valign="top" class="bevel-right"></td>
 </tr>
</table>


<script type="text/javascript">
 var cancelBubble = false;
 function _go(url) { document.location = url; }
</script>
<div id="maincol"
 
>

 
<!-- IE -->




<div class="expand">
<div id="colcontrol">
<style type="text/css">
 #file_flipper { white-space: nowrap; padding-right: 2em; }
 #file_flipper.hidden { display: none; }
 #file_flipper .pagelink { color: #0000CC; text-decoration: underline; }
 #file_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }
</style>
<table id="nav_and_rev" class="list"
 cellpadding="0" cellspacing="0" width="100%">
 <tr>
 
 <td nowrap="nowrap" class="src_crumbs src_nav" width="33%">
 <strong class="src_nav">Source path:&nbsp;</strong>
 <span id="crumb_root">
 
 <a href="/p/sobject-serialization/source/browse/">svn</a>/&nbsp;</span>
 <span id="crumb_links" class="ifClosed"><a href="/p/sobject-serialization/source/browse/trunk/">trunk</a><span class="sp">/&nbsp;</span><a href="/p/sobject-serialization/source/browse/trunk/src/">src</a><span class="sp">/&nbsp;</span><a href="/p/sobject-serialization/source/browse/trunk/src/classes/">classes</a><span class="sp">/&nbsp;</span>TestStringSerializer.cls</span>
 
 

 </td>
 
 
 <td nowrap="nowrap" width="33%" align="center">
 <a href="/p/sobject-serialization/source/browse/trunk/src/classes/TestStringSerializer.cls?edit=1"
 ><img src="http://www.gstatic.com/codesite/ph/images/pencil-y14.png"
 class="edit_icon">Edit file</a>
 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper"><b>r4</b></td>
 
 </tr></table>
 </td> 
 </tr>
</table>

<div class="fc">
 
 
 
<style type="text/css">
.undermouse span {
 background-image: url(http://www.gstatic.com/codesite/ph/images/comments.gif); }
</style>
<table class="opened" id="review_comment_area"
><tr>
<td id="nums">
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn4_1"

><td id="1"><a href="#1">1</a></td></tr
><tr id="gr_svn4_2"

><td id="2"><a href="#2">2</a></td></tr
><tr id="gr_svn4_3"

><td id="3"><a href="#3">3</a></td></tr
><tr id="gr_svn4_4"

><td id="4"><a href="#4">4</a></td></tr
><tr id="gr_svn4_5"

><td id="5"><a href="#5">5</a></td></tr
><tr id="gr_svn4_6"

><td id="6"><a href="#6">6</a></td></tr
><tr id="gr_svn4_7"

><td id="7"><a href="#7">7</a></td></tr
><tr id="gr_svn4_8"

><td id="8"><a href="#8">8</a></td></tr
><tr id="gr_svn4_9"

><td id="9"><a href="#9">9</a></td></tr
><tr id="gr_svn4_10"

><td id="10"><a href="#10">10</a></td></tr
><tr id="gr_svn4_11"

><td id="11"><a href="#11">11</a></td></tr
><tr id="gr_svn4_12"

><td id="12"><a href="#12">12</a></td></tr
><tr id="gr_svn4_13"

><td id="13"><a href="#13">13</a></td></tr
><tr id="gr_svn4_14"

><td id="14"><a href="#14">14</a></td></tr
><tr id="gr_svn4_15"

><td id="15"><a href="#15">15</a></td></tr
><tr id="gr_svn4_16"

><td id="16"><a href="#16">16</a></td></tr
><tr id="gr_svn4_17"

><td id="17"><a href="#17">17</a></td></tr
><tr id="gr_svn4_18"

><td id="18"><a href="#18">18</a></td></tr
><tr id="gr_svn4_19"

><td id="19"><a href="#19">19</a></td></tr
><tr id="gr_svn4_20"

><td id="20"><a href="#20">20</a></td></tr
><tr id="gr_svn4_21"

><td id="21"><a href="#21">21</a></td></tr
><tr id="gr_svn4_22"

><td id="22"><a href="#22">22</a></td></tr
><tr id="gr_svn4_23"

><td id="23"><a href="#23">23</a></td></tr
><tr id="gr_svn4_24"

><td id="24"><a href="#24">24</a></td></tr
><tr id="gr_svn4_25"

><td id="25"><a href="#25">25</a></td></tr
><tr id="gr_svn4_26"

><td id="26"><a href="#26">26</a></td></tr
><tr id="gr_svn4_27"

><td id="27"><a href="#27">27</a></td></tr
><tr id="gr_svn4_28"

><td id="28"><a href="#28">28</a></td></tr
><tr id="gr_svn4_29"

><td id="29"><a href="#29">29</a></td></tr
><tr id="gr_svn4_30"

><td id="30"><a href="#30">30</a></td></tr
><tr id="gr_svn4_31"

><td id="31"><a href="#31">31</a></td></tr
><tr id="gr_svn4_32"

><td id="32"><a href="#32">32</a></td></tr
><tr id="gr_svn4_33"

><td id="33"><a href="#33">33</a></td></tr
><tr id="gr_svn4_34"

><td id="34"><a href="#34">34</a></td></tr
><tr id="gr_svn4_35"

><td id="35"><a href="#35">35</a></td></tr
><tr id="gr_svn4_36"

><td id="36"><a href="#36">36</a></td></tr
><tr id="gr_svn4_37"

><td id="37"><a href="#37">37</a></td></tr
><tr id="gr_svn4_38"

><td id="38"><a href="#38">38</a></td></tr
><tr id="gr_svn4_39"

><td id="39"><a href="#39">39</a></td></tr
><tr id="gr_svn4_40"

><td id="40"><a href="#40">40</a></td></tr
><tr id="gr_svn4_41"

><td id="41"><a href="#41">41</a></td></tr
><tr id="gr_svn4_42"

><td id="42"><a href="#42">42</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre ><table id="src_table_0"><tr
id=sl_svn4_1

><td class="source">@isTest<br></td></tr
><tr
id=sl_svn4_2

><td class="source">private class TestStringSerializer {<br></td></tr
><tr
id=sl_svn4_3

><td class="source"><br></td></tr
><tr
id=sl_svn4_4

><td class="source">	private static testMethod void testSerialize(){<br></td></tr
><tr
id=sl_svn4_5

><td class="source">		<br></td></tr
><tr
id=sl_svn4_6

><td class="source">		Account a1 = new Account(Name=&#39;hello&#39;, NumberOfEmployees=45);<br></td></tr
><tr
id=sl_svn4_7

><td class="source">		<br></td></tr
><tr
id=sl_svn4_8

><td class="source">		string s1 = StringSerializer.Serialize( a1 );<br></td></tr
><tr
id=sl_svn4_9

><td class="source">		<br></td></tr
><tr
id=sl_svn4_10

><td class="source">		System.assertEquals( string.valueOf(a1), s1 );<br></td></tr
><tr
id=sl_svn4_11

><td class="source">	}<br></td></tr
><tr
id=sl_svn4_12

><td class="source"><br></td></tr
><tr
id=sl_svn4_13

><td class="source">	private static testMethod void testDeSerialize(){<br></td></tr
><tr
id=sl_svn4_14

><td class="source">		<br></td></tr
><tr
id=sl_svn4_15

><td class="source">		system.assertEquals( null, StringSerializer.Deserialize(&#39;&#39;) );<br></td></tr
><tr
id=sl_svn4_16

><td class="source">		system.assertEquals( null, StringSerializer.Deserialize(&#39;RandomObject:{somefields}&#39;) );<br></td></tr
><tr
id=sl_svn4_17

><td class="source">		<br></td></tr
><tr
id=sl_svn4_18

><td class="source">		Account a1 = new Account(Name=&#39;hello&#39;, NumberOfEmployees=45, AnnualRevenue=459700.32);<br></td></tr
><tr
id=sl_svn4_19

><td class="source">		Account a2 = (Account)StringSerializer.Deserialize( StringSerializer.Serialize( a1 ) );<br></td></tr
><tr
id=sl_svn4_20

><td class="source">		System.assertEquals( a1.name, a2.Name );<br></td></tr
><tr
id=sl_svn4_21

><td class="source">		System.assertEquals( a1.NumberOfEmployees, a2.NumberOfEmployees );<br></td></tr
><tr
id=sl_svn4_22

><td class="source">		System.assertEquals( a1.AnnualRevenue, a2.AnnualRevenue );<br></td></tr
><tr
id=sl_svn4_23

><td class="source">		<br></td></tr
><tr
id=sl_svn4_24

><td class="source">		Contact c1 = new Contact(Lastname=&#39;Surname&#39;, EmailBouncedDate=datetime.now(), Birthdate=date.today());<br></td></tr
><tr
id=sl_svn4_25

><td class="source">		insert c1;<br></td></tr
><tr
id=sl_svn4_26

><td class="source">		<br></td></tr
><tr
id=sl_svn4_27

><td class="source">		Contact c2 = [SELECT Id FROM Contact WHERE Id = :c1.Id limit 1];<br></td></tr
><tr
id=sl_svn4_28

><td class="source">		Contact c3 = (Contact)StringSerializer.Deserialize( StringSerializer.Serialize( c2 ) );<br></td></tr
><tr
id=sl_svn4_29

><td class="source">		System.assertEquals( c2.Id, c3.Id );<br></td></tr
><tr
id=sl_svn4_30

><td class="source">		<br></td></tr
><tr
id=sl_svn4_31

><td class="source">		c2 = [SELECT Id, EmailBouncedDate, Birthdate FROM Contact WHERE Id = :c1.Id limit 1];<br></td></tr
><tr
id=sl_svn4_32

><td class="source">		c3 = (Contact)StringSerializer.Deserialize( StringSerializer.Serialize( c2 ) );<br></td></tr
><tr
id=sl_svn4_33

><td class="source">		System.assertEquals( c2.EmailBouncedDate, c3.EmailBouncedDate );<br></td></tr
><tr
id=sl_svn4_34

><td class="source">		System.assertEquals( c2.Birthdate, c3.Birthdate );<br></td></tr
><tr
id=sl_svn4_35

><td class="source">		<br></td></tr
><tr
id=sl_svn4_36

><td class="source">		Task t1 = new Task(IsReminderSet=false);<br></td></tr
><tr
id=sl_svn4_37

><td class="source">		Task t2 = (Task)StringSerializer.Deserialize( StringSerializer.Serialize( t1 ) );<br></td></tr
><tr
id=sl_svn4_38

><td class="source">		System.assertEquals( t1.IsReminderSet, t2.IsReminderSet );<br></td></tr
><tr
id=sl_svn4_39

><td class="source">		<br></td></tr
><tr
id=sl_svn4_40

><td class="source">	}<br></td></tr
><tr
id=sl_svn4_41

><td class="source">	<br></td></tr
><tr
id=sl_svn4_42

><td class="source">}<br></td></tr
></table></pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
</td>
</tr></table>

 
<script type="text/javascript">
 var lineNumUnderMouse = -1;
 
 function gutterOver(num) {
 gutterOut();
 var newTR = document.getElementById('gr_svn4_' + num);
 if (newTR) {
 newTR.className = 'undermouse';
 }
 lineNumUnderMouse = num;
 }
 function gutterOut() {
 if (lineNumUnderMouse != -1) {
 var oldTR = document.getElementById(
 'gr_svn4_' + lineNumUnderMouse);
 if (oldTR) {
 oldTR.className = '';
 }
 lineNumUnderMouse = -1;
 }
 }
 var numsGenState = {table_base_id: 'nums_table_'};
 var srcGenState = {table_base_id: 'src_table_'};
 var alignerRunning = false;
 var startOver = false;
 function setLineNumberHeights() {
 if (alignerRunning) {
 startOver = true;
 return;
 }
 numsGenState.chunk_id = 0;
 numsGenState.table = document.getElementById('nums_table_0');
 numsGenState.row_num = 0;
 if (!numsGenState.table) {
 return; // Silently exit if no file is present.
 }
 srcGenState.chunk_id = 0;
 srcGenState.table = document.getElementById('src_table_0');
 srcGenState.row_num = 0;
 alignerRunning = true;
 continueToSetLineNumberHeights();
 }
 function rowGenerator(genState) {
 if (genState.row_num < genState.table.rows.length) {
 var currentRow = genState.table.rows[genState.row_num];
 genState.row_num++;
 return currentRow;
 }
 var newTable = document.getElementById(
 genState.table_base_id + (genState.chunk_id + 1));
 if (newTable) {
 genState.chunk_id++;
 genState.row_num = 0;
 genState.table = newTable;
 return genState.table.rows[0];
 }
 return null;
 }
 var MAX_ROWS_PER_PASS = 1000;
 function continueToSetLineNumberHeights() {
 var rowsInThisPass = 0;
 var numRow = 1;
 var srcRow = 1;
 while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {
 numRow = rowGenerator(numsGenState);
 srcRow = rowGenerator(srcGenState);
 rowsInThisPass++;
 if (numRow && srcRow) {
 if (numRow.offsetHeight != srcRow.offsetHeight) {
 numRow.firstChild.style.height = srcRow.offsetHeight + 'px';
 }
 }
 }
 if (rowsInThisPass >= MAX_ROWS_PER_PASS) {
 setTimeout(continueToSetLineNumberHeights, 10);
 } else {
 alignerRunning = false;
 if (startOver) {
 startOver = false;
 setTimeout(setLineNumberHeights, 500);
 }
 }
 }
 function initLineNumberHeights() {
 // Do 2 complete passes, because there can be races
 // between this code and prettify.
 startOver = true;
 setTimeout(setLineNumberHeights, 250);
 window.onresize = setLineNumberHeights;
 }
 initLineNumberHeights();
</script>

 
 
 <div id="log">
 <div style="text-align:right">
 <a class="ifCollapse" href="#" onclick="_toggleMeta('', 'p', 'sobject-serialization', this)">Show details</a>
 <a class="ifExpand" href="#" onclick="_toggleMeta('', 'p', 'sobject-serialization', this)">Hide details</a>
 </div>
 <div class="ifExpand">
 
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="changelog">
 <p>Change log</p>
 <div>
 <a href="/p/sobject-serialization/source/detail?spec=svn4&amp;r=2">r2</a>
 by simon.go...@sgopus.com
 on Jun 9, 2011
 &nbsp; <a href="/p/sobject-serialization/source/diff?spec=svn4&r=2&amp;format=side&amp;path=/trunk/src/classes/TestStringSerializer.cls&amp;old_path=/trunk/src/classes/TestStringSerializer.cls&amp;old=">Diff</a>
 </div>
 <pre>Version 1.0 - initial unmanaged package
code</pre>
 </div>
 
 
 
 
 
 
 <script type="text/javascript">
 var detail_url = '/p/sobject-serialization/source/detail?r=2&spec=svn4';
 var publish_url = '/p/sobject-serialization/source/detail?r=2&spec=svn4#publish';
 // describe the paths of this revision in javascript.
 var changed_paths = [];
 var changed_urls = [];
 
 changed_paths.push('/trunk/src');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes/Serializer.cls');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/Serializer.cls?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes/Serializer.cls-meta.xml');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/Serializer.cls-meta.xml?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes/StringSerializer.cls');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/StringSerializer.cls?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes/StringSerializer.cls-meta.xml');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/StringSerializer.cls-meta.xml?r\x3d2\x26spec\x3dsvn4');
 
 
 changed_paths.push('/trunk/src/classes/TestStringSerializer.cls');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/TestStringSerializer.cls?r\x3d2\x26spec\x3dsvn4');
 
 var selected_path = '/trunk/src/classes/TestStringSerializer.cls';
 
 
 changed_paths.push('/trunk/src/classes/TestStringSerializer.cls-meta.xml');
 changed_urls.push('/p/sobject-serialization/source/browse/trunk/src/classes/TestStringSerializer.cls-meta.xml?r\x3d2\x26spec\x3dsvn4');
 
 
 function getCurrentPageIndex() {
 for (var i = 0; i < changed_paths.length; i++) {
 if (selected_path == changed_paths[i]) {
 return i;
 }
 }
 }
 function getNextPage() {
 var i = getCurrentPageIndex();
 if (i < changed_paths.length - 1) {
 return changed_urls[i + 1];
 }
 return null;
 }
 function getPreviousPage() {
 var i = getCurrentPageIndex();
 if (i > 0) {
 return changed_urls[i - 1];
 }
 return null;
 }
 function gotoNextPage() {
 var page = getNextPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoPreviousPage() {
 var page = getPreviousPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoDetailPage() {
 window.location = detail_url;
 }
 function gotoPublishPage() {
 window.location = publish_url;
 }
</script>

 
 <style type="text/css">
 #review_nav {
 border-top: 3px solid white;
 padding-top: 6px;
 margin-top: 1em;
 }
 #review_nav td {
 vertical-align: middle;
 }
 #review_nav select {
 margin: .5em 0;
 }
 </style>
 <div id="review_nav">
 <table><tr><td>Go to:&nbsp;</td><td>
 <select name="files_in_rev" onchange="window.location=this.value">
 
 <option value="/p/sobject-serialization/source/browse/trunk/src?r=2&amp;spec=svn4"
 
 >/trunk/src</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes?r=2&amp;spec=svn4"
 
 >/trunk/src/classes</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/Serializer.cls?r=2&amp;spec=svn4"
 
 >/trunk/src/classes/Serializer.cls</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/Serializer.cls-meta.xml?r=2&amp;spec=svn4"
 
 >.../classes/Serializer.cls-meta.xml</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/StringSerializer.cls?r=2&amp;spec=svn4"
 
 >...src/classes/StringSerializer.cls</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/StringSerializer.cls-meta.xml?r=2&amp;spec=svn4"
 
 >...es/StringSerializer.cls-meta.xml</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/TestStringSerializer.cls?r=2&amp;spec=svn4"
 selected="selected"
 >...classes/TestStringSerializer.cls</option>
 
 <option value="/p/sobject-serialization/source/browse/trunk/src/classes/TestStringSerializer.cls-meta.xml?r=2&amp;spec=svn4"
 
 >...estStringSerializer.cls-meta.xml</option>
 
 </select>
 </td></tr></table>
 
 
 



 
 </div>
 
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="older_bubble">
 <p>Older revisions</p>
 
 <a href="/p/sobject-serialization/source/list?path=/trunk/src/classes/TestStringSerializer.cls&start=2">All revisions of this file</a>
 </div>
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="fileinfo_bubble">
 <p>File info</p>
 
 <div>Size: 1646 bytes,
 42 lines</div>
 
 <div><a href="//sobject-serialization.googlecode.com/svn/trunk/src/classes/TestStringSerializer.cls">View raw file</a></div>
 </div>
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 </div>
 </div>


</div>

</div>
</div>


<script src="http://www.gstatic.com/codesite/ph/8169703206223286781/js/source_file_scripts.js"></script>

 <script type="text/javascript" src="https://kibbles.googlecode.com/files/kibbles-1.3.3.comp.js"></script>
 <script type="text/javascript">
 var lastStop = null;
 var initialized = false;
 
 function updateCursor(next, prev) {
 if (prev && prev.element) {
 prev.element.className = 'cursor_stop cursor_hidden';
 }
 if (next && next.element) {
 next.element.className = 'cursor_stop cursor';
 lastStop = next.index;
 }
 }
 
 function pubRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftDestroyed(data) {
 updateCursorForCell(data.cellId, 'nocursor');
 if (initialized) {
 reloadCursors();
 }
 }
 function reloadCursors() {
 kibbles.skipper.reset();
 loadCursors();
 if (lastStop != null) {
 kibbles.skipper.setCurrentStop(lastStop);
 }
 }
 // possibly the simplest way to insert any newly added comments
 // is to update the class of the corresponding cursor row,
 // then refresh the entire list of rows.
 function updateCursorForCell(cellId, className) {
 var cell = document.getElementById(cellId);
 // we have to go two rows back to find the cursor location
 var row = getPreviousElement(cell.parentNode);
 row.className = className;
 }
 // returns the previous element, ignores text nodes.
 function getPreviousElement(e) {
 var element = e.previousSibling;
 if (element.nodeType == 3) {
 element = element.previousSibling;
 }
 if (element && element.tagName) {
 return element;
 }
 }
 function loadCursors() {
 // register our elements with skipper
 var elements = CR_getElements('*', 'cursor_stop');
 var len = elements.length;
 for (var i = 0; i < len; i++) {
 var element = elements[i]; 
 element.className = 'cursor_stop cursor_hidden';
 kibbles.skipper.append(element);
 }
 }
 function toggleComments() {
 CR_toggleCommentDisplay();
 reloadCursors();
 }
 function keysOnLoadHandler() {
 // setup skipper
 kibbles.skipper.addStopListener(
 kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_top', 50);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_bottom', 100);
 // Register our keys
 kibbles.skipper.addFwdKey("n");
 kibbles.skipper.addRevKey("p");
 kibbles.keys.addKeyPressListener(
 'u', function() { window.location = detail_url; });
 kibbles.keys.addKeyPressListener(
 'r', function() { window.location = detail_url + '#publish'; });
 
 kibbles.keys.addKeyPressListener('j', gotoNextPage);
 kibbles.keys.addKeyPressListener('k', gotoPreviousPage);
 
 
 }
 </script>
<script src="http://www.gstatic.com/codesite/ph/8169703206223286781/js/code_review_scripts.js"></script>
<script type="text/javascript">
 function showPublishInstructions() {
 var element = document.getElementById('review_instr');
 if (element) {
 element.className = 'opened';
 }
 }
 var codereviews;
 function revsOnLoadHandler() {
 // register our source container with the commenting code
 var paths = {'svn4': '/trunk/src/classes/TestStringSerializer.cls'}
 codereviews = CR_controller.setup(
 {"token":"84c905b48fa2b5d335fc01e3f2809661","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/8169703206223286781","projectName":"sobject-serialization","projectHomeUrl":"/p/sobject-serialization","absoluteBaseUrl":"http://code.google.com","relativeBaseUrl":"","urlPrefix":"p","loggedInUserEmail":"s.m.goodyear@gmail.com"}, '', 'svn4', paths,
 CR_BrowseIntegrationFactory);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);
 codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);
 
 
 
 
 
 
 
 var initialized = true;
 reloadCursors();
 }
 window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};

</script>
<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/8169703206223286781/js/dit_scripts.js"></script>

 
 
 
 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/8169703206223286781/js/ph_core.js"></script>
 
 
 
 
 <script type="text/javascript" src="/js/codesite_product_dictionary_ph.pack.04102009.js"></script>
</div> 
<div id="footer" dir="ltr">
 <div class="text">
 &copy;2011 Google -
 <a href="/projecthosting/terms.html">Terms</a> -
 <a href="http://www.google.com/privacy.html">Privacy</a> -
 <a href="/p/support/">Project Hosting Help</a>
 </div>
</div>
 <div class="hostedBy" style="margin-top: -20px;">
 <span style="vertical-align: top;">Powered by <a href="http://code.google.com/projecthosting/">Google Project Hosting</a></span>
 </div>
 
 


 
 </body>
</html>
