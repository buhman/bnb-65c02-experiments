        ;; set the Data Direction for Port B, pin 0 to "output"
        LDA # 1
        STA a 8002

        ;; toggle the Output Register for Port B, pin 0 to "on"
loop:   LDA # 1
        STA a 8000

        ;; toggle the Output Register for Port B, pin 0 to "off"
        LDA # 0
        STA a 8000

        ;; repeat
        JMP a :loop
