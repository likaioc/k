requires "imp.k"

module VERIFICATION
    imports IMP

    rule (#if C #then B1 #else B2 #fi) +Int A => #if C #then (B1 +Int A) #else (B2 +Int A) #fi
endmodule

module KLABEL-SPEC
    imports VERIFICATION

    rule <k> .K => .K </k>
endmodule
