function Ocultar(){
    var ref_select = document.getElementById('ref_select');
    var ref_input = document.getElementById('ref_input');
    
if (ref_select.value != "")
ref_input.disabled = true;
else
ref_input.disabled = false;

if (ref_input.value != "")
ref_select.disabled = true;
else
ref_select.disabled = false;
}