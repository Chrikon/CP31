<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=windows-1252"/>
	<title></title>
	<meta name="generator" content="LibreOffice 4.4.3.2 (Windows)"/>
	<meta name="author" content="&Chi;&rho;&#942;&sigma;&tau;&omicron;&sigmaf; &Kappa;&omega;&nu;&sigma;&tau;&alpha;&nu;&tau;&iota;&nu;&#943;&delta;&eta;&sigmaf;"/>
	<meta name="created" content="2015-08-18T08:22:02.330316774"/>
	<meta name="changed" content="2015-08-19T21:51:48.725000000"/>
	<style type="text/css">
		@page { margin: 2cm }
		p { margin-bottom: 0.25cm; line-height: 120% }
		pre.cjk { font-family: "NSimSun", monospace }
		td p { margin-bottom: 0cm }
	</style>
</head>
<body lang="en-US" dir="ltr">
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	Given
the description of the data set, the run_analysis R-file is an
implementation of the below five objectives:</font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<br/>

</p>
<ol>
	<li/>
<p style="margin-bottom: 0cm"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">Merge
	the training and test sets to create one data set</font></font></p>
</ol>
<p style="margin-bottom: 0cm"><br/>

</p>
<ol start="2">
	<li/>
<p style="margin-bottom: 0cm"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">Extracts
	only the measurements on the mean and standard deviation for each
	measurement</font></font></p>
</ol>
<p align="left" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<br/>

</p>
<ol start="3">
	<li/>
<p style="margin-bottom: 0cm"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">Uses
	descriptive activity names to name the activities in the data set:</font></font></p>
</ol>
<p style="margin-bottom: 0cm"><br/>

</p>
<ol start="4">
	<li/>
<p style="margin-bottom: 0cm"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">Appropriately
	labels the data set with descriptive variable names:</font></font></p>
</ol>
<p style="margin-bottom: 0cm"><br/>

</p>
<ol start="5">
	<li/>
<p><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">From
	the data set in step 4, creates a second, independent tidy data set
	with the average of each variable for each activity and each
	subject:</font></font></p>
</ol>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><u>Analysis
of script</u></font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	The
work dog for the above analysis is the function
<b>runAnalysisObjConstructor() </b>and returns an analysisObject
which has two fields ,of data frame type, with the name <b>firstDataSet</b>
and <b>secondDataSet</b> and three methods:</font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<ol>
	<ol>
		<ol>
			<li/>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
			<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>getDataSet</b><span style="font-weight: normal">
			which returns the field </span><b>secondDataSet</b></font></font></p>
			<li/>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
			<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>viewDataSet
			</b><span style="font-weight: normal">which graphical returns the
			above data frame</span></font></font></p>
			<li/>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
			<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>storeToFile
			</b><span style="font-weight: normal">which stores the data frame
			in a csv file</span></font></font></p>
		</ol>
	</ol>
</ol>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	Additional
it should be mentioned that the function creates three <b>intermediate</b><b>
tab</b><b>les, </b><b>activities, features </b><b>&amp; msvar,</b>
which are obtain from the csv files &ldquo;activity_labels.txt&rdquo;,
&ldquo;features.txt&rdquo; &amp; &ldquo;secondTableFeature.csv&rdquo;
, respectively. This tables as mentioned are temporary variables
which are use for acquiring &ldquo;descriptive activity names to name
the activities in the data set&rdquo; and &ldquo;appropriate label
the data set with descriptive variable names&rdquo;</font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
 <font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>activities&lt;-read.csv(&quot;./UCI\
HAR\ Dataset/activity_labels.txt&quot;, header = FALSE, col.names =
c(&quot;id&quot;,&quot;activity&quot;),sep=&quot; &quot;)</b></font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	The
&ldquo;activity_labels.txt&rdquo; provides the below table, which
provides the link between the  </font></font>
</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<dl>
	<dl>
		<dl>
			<dl>
				<dd>
				<table width="377" cellpadding="4" cellspacing="0">
					<col width="26">
					<col width="333">
					<tr valign="top">
						<td width="26" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0.1cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">Id</font></font></p>
						</td>
						<td width="333" style="border: 1px solid #000000; padding: 0.1cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">activity</font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">1</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center" style="font-weight: normal"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">WALKING</font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">2</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center" style="font-weight: normal"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">WALKING_UPSTAIRS</font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">3</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">WALKING_</span></span><span lang="en-US"><span style="font-weight: normal">DOWN</span></span><span lang="en-US"><span style="font-weight: normal">STAIRS</span></span></font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">4</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">SITTING</font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">5</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">STANDING</font></font></p>
						</td>
					</tr>
					<tr valign="top">
						<td width="26" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">6</font></font></p>
						</td>
						<td width="333" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0.1cm">
							<p align="center"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">LAYING</font></font></p>
						</td>
					</tr>
				</table>
			</dl>
		</dl>
	</dl>
</dl>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">numeric
values of the activities in &ldquo;Y_*.txt&rdquo; with names that
provide descriptive activity names to the activities of the data set.</font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>features&lt;-read.csv(&quot;./UCI\
HAR\ Dataset/features.txt&quot;, header = FALSE, col.names =
c(&quot;id&quot;,&quot;fname&quot;),sep=&quot; &quot;)</b></font></font></p>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	The
&ldquo;features.txt&rdquo; contains descriptive names for the 561
components of the feature vector, contained in the &ldquo;X_*.txt&rdquo;.</font></font></p>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><b>msvar&lt;-read.csv(&quot;secondTableFeature.csv&quot;,
header = FALSE, col.names = c(&quot;id&quot;,&quot;fname&quot;),sep=&quot;
&quot;)</b></font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	While
the msvar it is provide the ids of the feature vector that are
referring to the mean and standard variation values (postfix mean())
and the standard deviation (postfix std()) of the feature variables</font></font></p>
<p style="margin-bottom: 0cm; line-height: 100%"><a name="result_box"></a>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">(Note:
The postfix XYZ </span></span></span></font><span lang="en-US">indicates
that each </span><span lang="en-US">of the variables </span><span lang="en-US">has
</span><span lang="en-US">three componets</span><span lang="en-US">
(one </span><span lang="en-US">for each axis xx',yy',zz')</span> </font>
</p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyAcc-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tGravityAcc-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyAccJerk-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyGyro-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyGyroJerk-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyAccMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tGravityAccMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyAccJerkMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyGyroMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">tBodyGyroJerkMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyAcc-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyAccJerk-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyGyro-XYZ</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyAccMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyAccJerkMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyGyroMag</font></font></p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">fBodyGyroJerkMag
</font></font>
</p>
<p align="center" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p align="left" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">So
the total number of the variables N=((3 dimension
variablesX3(axis)+(1 dimension variables))x2(functions mean and
stbd)&lt;=&gt;N=(8x3+9)x2=66 columns.</font></font></p>
<p align="left" style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span style="text-decoration: none"><span style="font-weight: normal">	</span></span><span style="text-decoration: none"><span style="font-weight: normal">Notably
t</span></span><span style="text-decoration: none"><span style="font-weight: normal">he
secondFeatureTable.csv file was extracted from the features.txt file
by deleting the varialbles that don't contain the postfix &ldquo;mean()&rdquo;
and &ldquo;std()&rdquo;, </span></span><span style="text-decoration: none"><span style="font-weight: normal">corresponding</span></span><span style="text-decoration: none"><span style="font-weight: normal">
to the mean and standard deviation values.</span></span></font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>
</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<img src="data:image/png;base64,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" name="Object1" align="left" width="332" height="938"/>
<br/>
<br/>
<br/><br/>
</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span style="text-decoration: none"><span style="font-weight: normal">	So
in order to </span></span><span style="text-decoration: none"><span style="font-weight: normal">produce
the data set of step 1, meaning, to</span></span><span style="text-decoration: none"><span style="font-weight: normal">
m</span></span><span style="text-decoration: none"><span style="font-weight: normal">erge
the training and test set in one data set,</span></span><span style="text-decoration: none"><span style="font-weight: normal">
the construction function calls a private function of the class
</span></span><span style="text-decoration: none"><b>makeFirstDataSet.</b></span></font></font></p>
<p style="margin-bottom: 0cm; font-weight: normal; line-height: 100%; text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">The
function combines by row, two tables which are containing the data
from the test and train folder, respectively.</font></font></p>
<p style="margin-bottom: 0cm; line-height: 100%"><span style="text-decoration: none">
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">	</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">In
turn </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">the
above </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">function</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">
calls the private function </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>makeTypeTables</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">
which takes as variable the word </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>&ldquo;train&rdquo;</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">
or </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>&ldquo;test&rdquo;
</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">and
</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US">creat</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">e</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">s
</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">a
set of</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">
three tables, </span></font><font size="3" style="font-size: 12pt"><span lang="en-US">from
the csv files X_*.txt, subject_*.txt and Y_*.txt, </span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>.</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>(*={test,train}).</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US">
</span></font></font>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><b>xtable <- read.csv(“path/X_*.txt”, header = FALSE, col.names = as.character(fetures[,2]), sep="")</b></span></font></font>

</p>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><b>subjects<-read.csv(“path/subject_*.txt”, header = FALSE, col.names = "subject")</b></span></font></font><br/>
</p>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><b>activity<-read.csv(“path/Y_*.txt”, header = FALSE, col.names = "activity")</b></span></font></font><br/>


<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US">	Each one of the two set is combined by column to form one tidy data set/case with dimension    2947x563 (test experiment) and 7352x563 (train experiment)</span></font></font>
  
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">	</span></span><span lang="en-US"><span style="font-weight: normal">As a back work </span></span><span lang="en-US"><span style="font-weight: normal">is also c</span></span><span lang="en-US"><span style="font-weight: normal">hang</span></span><span lang="en-US"><span style="font-weight: normal">ing</span></span><span lang="en-US"><span style="font-weight: normal"> the activity variable from holding numeric values to </span></span><span lang="en-US"><span style="font-weight: normal">the </span></span><span lang="en-US"><span style="font-weight: normal">equivalent</span></span><span lang="en-US"><span style="font-weight: normal"> character nam</span></span><span lang="en-US"><span style="font-weight: normal">e </span></span><span lang="en-US"><span style="font-weight: normal">stored in</span></span><span lang="en-US"><span style="font-weight: normal"> </span></span><span lang="en-US"><span style="font-weight: normal">the</span></span><span lang="en-US"><span style="font-weight: normal"> </span></span><span lang="en-US"><span style="font-weight: normal">intermediate table,</span></span><span lang="en-US"><span style="font-weight: normal"> </span></span><span lang="en-US"><span style="font-weight: normal">activities.</span></span></font></font>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US">	</span></font></font>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US">	So in the last stage the makeFirstDataSet function </span></font><font size="3" style="font-size: 12pt"><span lang="en-US">combine</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">s</span></font><font size="3" style="font-size: 12pt"><span lang="en-US"> per row </span></font><font size="3" style="font-size: 12pt"><span lang="en-US">this two tables </span></font><font size="3" style="font-size: 12pt"><span lang="en-US">to form one table which contains the data of the whole experiment,</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">with anticipated dimensions  </span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>ncol=563,</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"> nrows=29</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">47</span></font><font size="3" style="font-size: 12pt"><span lang="en-US">+7352 &lt;=&gt; </span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>nrows=10</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>299. </b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>W</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">hilst w</span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">ith the use of </span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><b>msvar</b></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal"> table, we extract from the table only the variables containing the mean() and std() post fix in order to create the </span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">tidy</span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal"> data set of step </span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-weight: normal">4 </span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="font-weight: normal">with dimension of 10299x68</span></span></span></font></font>

<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><b>setFirstDataSet(rbind(makeTypeTables(&quot;test&quot;),makeTypeTables(&quot;train&quot;))[,c(1,2,msvar$id)])</b></span></font></font>
</pre><p align="left" style="margin-bottom: 0cm; font-style: normal; font-weight: normal; line-height: 100%">
 <font face="Times New Roman, serif"><font size="3" style="font-size: 12pt">	Subsequently
the script  creates the second tidy data set with the average of each
variable for each activity and each subject, by calling the <b>
meanAndStdDataSetTable </b>function which reorders a temporary table
containing the data of the first data set and then reorders the data
ascending by subject and activity and then calculates the average
value of the 66 variables, which returns the last tidy data set, with
anticipated dimension nrows = Nsubjects x Nactivities = 30 x 6 &lt;=&gt;
<b>nrows=180 </b>and <b>ncols=68</b>.</font></font></p>
<p align="left" style="margin-bottom: 0cm; font-style: normal; font-weight: normal; line-height: 100%">
<br/>

</p>
<p align="left" style="margin-bottom: 0cm; line-height: 100%"><a name="result_box2"></a>
<font face="Times New Roman, serif"><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="font-weight: normal">	</span></span></span></font><span lang="en-US">Finally,
as mentioned above </span><span lang="en-US">the</span><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="font-weight: normal">
</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="font-weight: normal">script
creates</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="font-weight: normal">
</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">an
analysisObject which has three methods: </span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>g</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>etDataSet</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">
which returns the </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">last</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">
</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">tidy
d</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">ata
Set, </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">the
</span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><b>viewDataSet
</b></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">which
graphical returns the above data frame </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="text-decoration: none"><span style="font-weight: normal">and
lastly </span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">storeToFile
</span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">function</span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">
which </span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">enable
us with the ability to store</span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">
the </span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">last
tidy</span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">
data </span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">set
in the work space, with the name </span></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><b>meanAndStdDataSet.txt</b></span></span></span></font><font size="3" style="font-size: 12pt"><span lang="en-US"><span style="font-style: normal"><span style="text-decoration: none"><span style="font-weight: normal">
</span></span></span></span></font></font>
</p>
</body>
</html>