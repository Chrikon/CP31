<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=windows-1252"/>
	<title></title>
	<meta name="generator" content="LibreOffice 4.4.3.2 (Windows)"/>
	<meta name="author" content="&Chi;&rho;&#942;&sigma;&tau;&omicron;&sigmaf; &Kappa;&omega;&nu;&sigma;&tau;&alpha;&nu;&tau;&iota;&nu;&#943;&delta;&eta;&sigmaf;"/>
	<meta name="created" content="2015-08-18T08:22:02.330316774"/>
	<meta name="changed" content="2015-08-19T21:51:48.725000000"/>
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
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<table width="238" cellpadding="2" cellspacing="0">
	<col width="30">
	<col width="197">
	<tr valign="bottom">
		<td width="30" height="12" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">1</p>
		</td>
		<td width="197" style="border: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">2</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">3</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">4</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">5</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">6</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAcc-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">41</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">42</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">43</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">44</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">45</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">46</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAcc-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">81</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">82</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">83</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">84</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">85</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">86</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerk-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">121</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">122</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">123</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">124</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">125</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">126</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyro-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">161</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">162</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">163</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">164</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">165</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">166</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerk-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">201</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">202</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">214</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAccMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">215</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tGravityAccMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">227</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerkMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">228</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyAccJerkMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">240</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">241</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">253</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerkMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">254</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">tBodyGyroJerkMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">266</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">267</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">268</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">269</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">270</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">271</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAcc-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">345</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">346</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">347</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">348</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">349</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">350</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccJerk-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">424</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-mean()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">425</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-mean()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">426</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-mean()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">427</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-std()-X</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">428</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-std()-Y</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">429</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyGyro-std()-Z</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">503</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">504</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyAccMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">516</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyAccJerkMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">517</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyAccJerkMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">529</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyGyroMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">530</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyGyroMag-std()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="13" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">542</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyGyroJerkMag-mean()</p>
		</td>
	</tr>
	<tr valign="bottom">
		<td width="30" height="12" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.05cm; padding-right: 0cm">
			<p align="center">543</p>
		</td>
		<td width="197" style="border-top: none; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000; padding: 0cm 0.05cm">
			<p align="center">fBodyBodyGyroJerkMag-std()</p>
		</td>
	</tr>
</table>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>
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
