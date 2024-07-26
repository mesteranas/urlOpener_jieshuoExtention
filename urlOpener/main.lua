xrequire "import"
import "android.net.Uri"
import "android.content.*"
import "android.widget.*"
import "android.view.*"
name="URL opener"
description="this tool makes you to open links"
layout={
    LinearLayout;
    {
        EditText;
        hint="url";
        id="url";
    };
    {
        Button;
        text="open";
        onClick=function ()
            if url.getText().toString()~="" then
                local intent = Intent(Intent.ACTION_VIEW)
                intent.setData(Uri.parse(url.getText().toString()))
                service.startActivity(intent)
            end
        end
    }
}
dlg=LuaDialog()
dlg.setTitle(name)
dlg.setMessage(description)
dlg.setView(loadlayout(layout))
dlg.show()