// JScript File
function checkLength(obj,max) {
            if (obj.value.length > max) {
                alert("Maximum " + max + " characters allowed.");
                 obj.value = obj.value.substring(0,max-1); 
                obj.focus();
            }
        }        
