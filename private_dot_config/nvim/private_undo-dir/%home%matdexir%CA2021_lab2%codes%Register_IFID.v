Vim�UnDo� !n�R�[�BW��"�ع
�P�\k��
����y   1   	                             a�Ө    _�                             ����                                                                                                                                                                                                                                                                                                                                                             a��L     �         ,      	   �         +    5��                          <                      �                         @                      �                        @                     �                        C                     �                        G                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��X    �         -       �         ,    5��                          �                      �                       	   �               	       �                        �                     �                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ɞ     �         -      	if (~start_i) begin5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ɡ     �         -      	if ((~start_i) begin5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ɥ     �         -      	if ((~start_i)||()) begin5��                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ɨ     �         -      !	if ((~start_i)||(Flush_i)) begin5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ɫ     �         -      %	if ((~start_i)||(Flush_i)||()) begin5��                         �                     5�_�      	                 #    ����                                                                                                                                                                                                                                                                                                                                                             a���    �         -      *	if ((~start_i)||(Flush_i)||(rst_i)) begin5��              	           �      	               5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             a���     �                	else if (Flush_i) begin5��                          �                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             a���     �                		instr_o <= 32'b0;5��                          �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             a��      �                		pc_o <= 32'b0;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��      �                	end5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a��     �      !   )      		instr_o <= instr_o;5��                                            5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             a��    �       "   )      		pc_o <= pc_o;5��                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��    �          )      	else if (Stall_i) begin5��                         �                     �                        �                    5�_�                    #   
    ����                                                                                                                                                                                                                                                                                                                                                             a��(     �   "   #          	else begin5��    "                      '                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             a��)     �   "   #          		instr_o <= instr_i;5��    "                      '                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             a��)     �   "   #          		pc_o <= pc_i;5��    "                      '                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             a��*    �   "   #          	end5��    "                      '                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӟ     �                !	if ((~start_i)||(Flush_i)) begin5��                          �      "               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӟ     �                		instr_o <= 32'b0;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӟ     �                		pc_o <= 32'b0;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӟ     �                	end5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӟ     �                $	else if (Stall_i && !stall_i) begin5��                          �      %               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�Ӡ     �                		instr_o <= instr_i;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�Ӡ     �                		pc_o <= pc_i;5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�ӡ     �                	end5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�Ӣ     �             �             5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a�Ӥ     �                	end5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a�ӧ    �      /         	�             �             5��                          �                     �                          �                     �                        �              4      5��