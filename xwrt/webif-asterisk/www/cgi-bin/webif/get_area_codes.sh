#!/usr/bin/webif-page
<?
. "/usr/lib/webif/webif.sh"
. /www/cgi-bin/webif/ast_functions.sh


cat <<EOF
Content-Type: text/html
Pragma: no-cache

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<xml version="1.0" encoding="@TR<<Encoding|ISO-8859-1>>>
<head>
	<link rel="stylesheet" type="text/css" href="/themes/active/webif.css">        
	<title></title>
	<style type="text/css">
		html, body { background-color: transparent; }
	</style>
</head>
EOF


echo '<body><center><table style="text-align: left; width: 80%;" border="0" cellpadding="0" cellspacing="0">'
echo '<tr><th colspan=1>Get Area Codes</th><td></td></tr>'
echo '<tr><th colspan=1>Getting the codes for: '$FORM_AreaCode' -  '$FORM_Prefix'</th><td></td></tr>'
echo '<td><textarea readonly="readonly" cols="80" rows="24" name="DialListTraces">'
echo -e "+------------------------------------------------------------------------------+"

sh /usr/lib/asterisk/agi-bin/getlocalprefixes.sh $FORM_AreaCode $FORM_Prefix


echo -e "+------------------------------------------------------------------------------+"

echo '</textarea></td><td></td></tr>'
echo '<tr><td align=center colspan=3><input class="flatbtn" type="submit" name="submit_action" value="@TR<<Close>>" onClick="window.close();" /></td></tr>'
echo '<tr><td align=center colspan=3>NOTE: Refresh the System page to display the Area Codes</td></tr>'
echo '</center></table></body></html>'
?>

