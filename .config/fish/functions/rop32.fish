# Defined in - @ line 1
function rop32 --wraps='nu -c "ROPgadget --binary /usr/lib/libc-2.33.so | grep ": pop rax" | lines | parse "{Address} : {Gadget} ; ret""' --wraps=nu\ -c\ \"ROPgadget\ --binary\ /usr/lib/libc-2.33.so\ \|\ grep\ \':\ pop\ rax\'\ \|\ lines\ \|\ parse\ \'\{Address\}\ :\ \{Gadget\}\ \;\ ret\'\" --description alias\ rop\ nu\ -c\ \"ROPgadget\ --binary\ /usr/lib/libc-2.33.so\ \|\ grep\ \':\ pop\ rax\'\ \|\ lines\ \|\ parse\ \'\{Address\}\ :\ \{Gadget\}\ \;\ ret\'\"
  /root/.cargo/bin/nu -c "ROPgadget --binary /root/x86/libc-2.31.so | grep '$argv' | lines | parse '{Address} : {Gadget} ; ret'";
end
