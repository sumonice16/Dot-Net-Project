<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="VAReport._Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:UpdatePanel ID="up1" runat="server">
        <ContentTemplate>
            <style type="text/css">
                .RadioButtonListNormalFont
                {
                    font-weight: normal;
                }
                .RadioButtonListNormalFontBangla
                {
                    font-weight: normal;
                    font-family: SutonnyMJ;
                    font-size: medium;
                }
            </style>
            UpdatePanel Time
            <%= DateTime.Now.ToString("T") %>
            <div>
                <strong>
                    <p class="text-center" style="font-size: medium">
                        Long Format Neonate Verbal Autopsy Questionnaire
                    </p>
                    <p class="text-center" style="font-size: medium">
                        Neonatal Deaths (0-28 days old)
                    </p>
                </strong>
            </div>
            <%-- ---------------------------------------Dropdown--------------------------------------------%>
            <%-- <div style="overflow: scroll; border: medium solid #000000;">
    <asp:GridView ID="GridView1" runat="server" class="sidebar">
    </asp:GridView>
    </div>--%>
            <strong>
                <div class="well" style="border: thin solid #666666;">
                    <asp:Literal ID="Literal1" runat="server" Text="Select Data ID:"></asp:Literal>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </strong>
            <div class=" well" style="border: thin solid #666666;">
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        Hospital catchment area
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="HospitalList" runat="server" Style="font-style: normal;"
                            RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Shaheed Ziaur Rahman MCH, Bogra</span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=Sher-e-Bangla MCH, Barisal</span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3=Jahurul Islam MCH, Kishoregonj</span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4=Chittagong MCH, Chittagong</span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5=Sylhet MCH, Sylhet</span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6=Sir Salimullah MCH, Dhaka </span> "
                                Value="6"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        Cluster ID
                    </div>
                    <div class="col-sm-6">
                        <span id="ClusterID" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        Type of decedent</div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="Decedentlist" runat="server" Style="font-style: normal;"
                            RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Neonate(0-28 days) Death</span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=Still birth</span> "
                                Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        Decedant ID
                    </div>
                    <div class="col-sm-6">
                        <span id="DecedantID" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
            </div>
            <%--  ---------------------------------------------------------------------------%>
            <div>
                <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                    <strong>mv¶vrKvi MÖnbKvixi Rb¨ wb‡`©kvejx :</strong> g„Z evwowU wPwýZ Kivi ci cÖavb
                    DËi``vZvi Ges ZLb Dcw¯’Z evwoi/cwiev‡ii m`m¨‡`i mv‡_ Kzkj wewbgqGes mg‡e`bv Rvbv‡bvi
                    gva¨‡g wb‡R‡K Zv‡`i gv‡S MÖnb‡hvM¨ K‡i Zzjyb Ges Zv‡`i wbKU Avcbvi cwiPq I Kv‡Ri
                    D‡Ïk¨ e¨vL¨v Kiæb| Zvici wb‡b¥ D‡jøwLZ †hvM¨Zv Abyhvqx cÖavb DËi`vZv wbe©vPb Kiæb|
                    ‡hvM¨Zv: 1) whwb g„Z wkïi LyeB Nwbó (‡ekxi fvM †¶‡ÎB gv) 2) ‡kl Amy‡Li mgq Dcw¯’Z
                    wQ‡jb Ges 3) ‡iv‡Mi DcmM©, j¶Y I wPwKrmv m¤ú‡K© Rv‡bb Ges fvjfv‡e ej‡Z cv‡ib DËi`vZvi
                    AbygwZ mv‡c‡¶ wkïwU g„Zyi Av‡M Amy‡Li †h mKj j¶Y †`Lv wM‡q‡Q Zvi m¤ú©‡K cÖkœ Kiæb|
                    mv¶vZKvi MÖn‡Yi mgq ZLb Dcw¯’Z Ab¨vb¨ cwiev‡ii m`¨m‡`i mvnvh¨ MÖnY Ki‡Z cv‡ib| hw`
                    cÖ_gevi m¤¢e bv nq Z‡e mv¶v‡Zi cieZ©x mgq wba©vib Kiæb hLb gv A_ev cÖavb DËi`vZv
                    evwo‡Z Dcw¯’Z _vK‡eb|
                </p>
                <p>
                    <strong>Instructions to interviewers:</strong> Introduce yourself and explain the
                    purpose of your visit to the main respondent and others present during visit. The
                    main respondent must be: 1) Closely related to the deceased baby, usually mother
                    2) Present during the illness that led to death and 3) Able to describe illness
                    symptoms and medical consultations prior to death Seek his/her consent for asking
                    questions concerning symptoms that the deceased had/showed when s/he was ill. During
                    interview, help can also be taken from other persons present. If you could not interview
                    in present visit, arrange a time to revisit the household when the main respondent
                    will be at home.
                </p>
            </div>
            <%-- ---------------------- Section 1-------------------------%>
            <div class="well" style="border: thin solid #666666;">
                I. IDENTIFICATION OF THE RESPONDENT
                <div class="row well" style="border: thin solid #666666;">
                    <div style="font-weight: bold;">
                        <strong>
                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                1.1 mv¶v‡Zi mgq hviv Dcw¯’Z Av‡Qb, Zv‡`i g‡a¨ Kviv †kl Amy‡Li mgq Dcw¯’Z wQ‡jb?</p>
                            <p>
                                (List the names of persons present during interview and during the illness that
                                led to death?)
                            </p>
                        </strong>
                        <div class="row well" style="overflow: scroll;">
                            <table class="table table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>
                                            <p>
                                                ID</p>
                                        </th>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                mv¶vrKvi MÖn‡bi mgq Dcw¯’Z e¨w³i bvg:
                                            </p>
                                            <p>
                                                (Name of those present in the interview)</p>
                                        </th>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                g„Z wkïi mv‡_ m¤úK©
                                            </p>
                                            <p>
                                                (Relationships to the deceased)</p>
                                        </th>
                                        <th>
                                            <p>
                                                Other</p>
                                        </th>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                Amy¯’Kvjxb Dcw¯’Z wQ‡jb
                                            </p>
                                            <p>
                                                (Present during illness)</p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="q1_1id1" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1name1" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp1" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp1_other" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="q1_1pre1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=No</span> " Value="2"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="q1_1id2" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1name2" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp2" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp2_other" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="q1_1pre2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=No</span> " Value="2"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="q1_1id3" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1name3" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp3" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="q1_1relp3_other" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="q1_1pre3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=No</span> " Value="2"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                ‡KvW:1= gv, 2= evev, 3= †evb, 4= fvB, 5= `v`x/bvbx, 6= `v`v/bvbv, 7=PvPv/PvPx, 777=
                                                Ab¨vb¨: )
                                            </p>
                                            <p>
                                                (Code: 1=Mother, 2=Father, 3=Sister, 4=Brother, 5=Grandmother, 6=Grandfather, 7=Aunt/uncle,
                                                777=Other)</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">1.2 cÖavb
                            DËi`vZvi jvBb </span>(Line number of the main respondent)
                    </div>
                    <div class="col-sm-6">
                        <span id="q1_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">1.3. g„Z
                            wkïi mv‡_ Zvi m¤úK©©© wK? </span>(His/her relationship with the deceased)
                    </div>
                    <div class="col-sm-6">
                        <span id="q1_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">1.4. cÖavb
                            DËi`vZvi eqm (eQi) </span>(His/her age (in years))
                    </div>
                    <div class="col-sm-6">
                        <span id="q1_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">1.5. wZwb
                            KZ ermii cÖvwZôvwbK wk¶v m¤úb K†iQb? </span>(His/her completed years of education:)
                        <p>
                            (Code: 98 = Never go to school, 999=don't know)
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <span id="q1_5" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">1.6. hw`
                            g„Z wkïi gv Dcw¯’Z bv _v‡Kb, wZwb wK GLbI ‡eu‡P Av‡Qb? </span>(If mother is
                        not present at the interview of deceased child, is mother still alive?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq1_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>888=N/A</span> " Value="888"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 2----------------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                II. BACKGROUND INFORMATION ABOUT THE INTERVIEWER
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">2.1. mv¶vrKvi
                            MÖnbKvixi bvg: </span>(Interviewer name:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q2_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">2.2. 1g
                            mv¶vZi ZvwiL (gvm/w`b/eQi): </span>(Date of first interview (MM/DD/YYYY))
                    </div>
                    <div class="col-sm-6">
                        <span id="q2_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">2.3. 2q
                            mv¶vZi ZvwiL (gvm/w`b/eQi): </span>(2.3 Date of second interview (MM/DD/YYYY))
                    </div>
                    <div class="col-sm-6">
                        <span id="q2_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 3----------------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                III. IDENTIFICATION & DEMOGRAPHIC DATA OF THE DECEASED
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.1 g„Z
                            wkïi bvg: </span>(Name of the deceased:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.1.1 gv‡qi
                            bvg: </span>(Mother's name:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_1_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.1.2 wcZvi
                            bvg: </span>(Father's name:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_1_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.2 MÖv‡gi
                            bvg: </span>(Village name:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.3 evwoi
                            bvg: </span>(Village name:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡KvW:
                        </span>(Code:)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_3code" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.4 wkïi
                            Rb¥ ZvwiL (gvm/w`b/eQi): </span>(Date of birth (MM/DD/YYYY)):
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.5 wkïi
                            g„Zz¨ ZvwiL (gvm/w`b/eQi): </span>(Date of death (MM/DD/YYYY))
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_5" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.6 g„Zz¨Kv‡j
                            eqm (w`b/N›Uv/wgwbU)(00/00/00 g„Z R†b¥i R‡b¨: ) </span>(Age at death (day/hour/minute)(00/00/00
                        for still birth):)
                    </div>
                    <div class="col-sm-6">
                        <span id="q3_6" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">3.7 wkïi
                            wj½ </span>(Sex of deceased:)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq3_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Male</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=Female</span> " Value="0"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 4----------------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                IV RESPONDENT'S ACCOUNT OF ILLNESS/EVENTS LEADING TO DEATH
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">g„Zz¨i
                            Av‡Mi wkïwUi me©‡kl Amy¯’Zv m¤ú‡K© Avcwb Avgv‡K `qv K‡i wKQy ej‡eb wK? </span>
                        (Could you tell me about the illness/events that led to her/his death? Prompt: Was
                        there anything else?)(For still birth: Ask about the mothers illness/events from
                        pregnancy to delivery that can lead the still birth) <span class="text-justify" style="font-family: SutonnyMJ;
                            font-size: medium"><strong>mv¶vrKvi MÖnbKvixi Rb¨ wb‡`©kvejx:</strong> DËi`vZv‡K
                            Zvi wb‡Ri fvlvq ejvi Rb¨ mnvqZv Kiæb| DËi`vZvi K_v †kl bv nIqv ch©šÍ Zv‡K Avi wKQz
                            wQj ejv †_‡K weiZ _vK‡eb | DËi`vZv†K ZZ¶b ch©šÍ wRÁvmv Ki‡Z _vKzb AviI wKQy wQj
                            wKbv , hZ¶b ch©šÍ DËi`vZv bv e‡j †h Avi wKQy ejvi †bB| ¯^ZùzZ©fv‡e ejv †iv‡Mi j¶Y¸‡jv
                            wjwce× Kiæb I AcwiwPZ ‡Kvb kã _vK‡j Zvi bx‡P jvBb †U‡b wPwýZ Kiæb| </span>(<strong>
                                Instructions to interviewers</strong> - Allow the respondent to tell you
                        about the illness in his or her own words. Do not prompt except for asking whether
                        there was anything else after the respondent finishes. Keep prompting until the
                        respondent says that there was nothing else. Take a moment to write all symptoms
                        mentioned spontaneously in the open history question. While recording, underline
                        any unfamiliar terms.)
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wK Kvi‡Y
                            wkïwUi g„Zy¨ n‡qwQj e‡j Avcwb (DËi`vZv/`vÎx) g‡b K‡ib? KviY mg~n wjLyb: (KviY 1)
                        </span>(According to the respondents what were the causes of death:(Cause I) )
                    </div>
                    <div class="col-sm-6">
                        <span id="q4_1_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wK Kvi‡Y
                            wkïwUi g„Zy¨ n‡qwQj e‡j Avcwb (DËi`vZv/`vÎx) g‡b K‡ib? KviY mg~n wjLyb: (KviY 2)
                        </span>(According to the respondents what were the causes of death:(Cause II) )
                    </div>
                    <div class="col-sm-6">
                        <span id="q4_1_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 5----------------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                V. INJURY OR ACCIDENT
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.1 ‡m
                            wK †Kvb AvNvZ ev `~N©Ubvq gviv wM‡qwQj? </span>(Did the baby die from an accident
                        or injury? )
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq5_1" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(skip to 6.1)</span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(skip to 6.1)</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.1.1 wK
                            ai‡bi `yN©Ubv ev AvNvZ? DËi`vZv‡K wbR †_‡K ej‡Z w`b| </span>(What was the kind
                        of injury or accident? (allow the respondent to answer spontaneously) )
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq5_1_1" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Animal bite </span> <span class='RadioButtonListNormalFontBangla'>(KzKzi/Rš‘i Kvgo) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Snake bite </span> <span class='RadioButtonListNormalFontBangla'>(mv‡ci Kvgo) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Train/road accident </span> <span class='RadioButtonListNormalFontBangla'>(‡Uªb/‡ivW GwKvª†W›U) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Boat/launch accident </span> <span class='RadioButtonListNormalFontBangla'>(‡bŠKv/jÂ GwK&ª†W›U) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Drowning </span> <span class='RadioButtonListNormalFontBangla'>(cvwb‡Z Wy‡e) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= Fall </span> <span class='RadioButtonListNormalFontBangla'>(c‡o wM‡q) </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= Cut/Stabbing </span> <span class='RadioButtonListNormalFontBangla'>‡K‡U wM‡q/QywiKvNvZ  </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= Suffocation by pressing neck </span> <span class='RadioButtonListNormalFontBangla'>(k¦vmiæ× Ki/MjvwUc) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= Poison </span> <span class='RadioButtonListNormalFontBangla'>(wel/Jla cÖ‡qvM K‡i) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Acid burn </span> <span class='RadioButtonListNormalFontBangla'>(GwmW`» n‡q) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= Burn </span> <span class='RadioButtonListNormalFontBangla'>(AwMœ`» n‡q ) </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>12= Circumcision </span> <span class='RadioButtonListNormalFontBangla'>(Lrbv Kivi mgq)</span> "
                                Value="12"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Other (specify) </span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (D‡jøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know </span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.1.1.
                            Ab¨vb¨ (DjøL K†iæb) </span>Other disease (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q5_1_1Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.2. AvNvZ/`yN©Ubv
                            wK Ab¨i Øviv n†qwQj? </span>(Was the injury or accident intentionally inflicted
                        by someone else?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq5_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.3. AvNvZ/`yN©Ubv
                            wK A‡b¨i Øviv n‡qwQj? </span>(Was the injury/accident intentionally inflicted
                        by someone else?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq5_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.4. AvNvZ
                            cÖvwß ev `yN©©Ubvi ci KZ¶Y wkïwU ePuwQj?(999 = Rvwbbv)(w`b/N›Uv/wgwbU)</span>(For
                        how long after the accident or injury did the baby survive?(999=don't Know) )
                    </div>
                    <div class="col-sm-6">
                        <span id="q5_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">5.5. wkïwU
                            wK g„Zz¨i Av†M wPwKrmv cqwQj?</span> (Did the baby receive medical care before
                        death?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq5_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <p>
                    Validation: If 5.4 is less than or equal to 7 days, skip to section 10. Otherwise,
                    continue to section 6
                </p>
            </div>
            <%-------------------------------------------------Section 6----------------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                VI. SIGNS & SYMPTOMS WITH PREGNANCY AND DELIVERY
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.1. Mf©ve¯nvq
                            gv‡qi wb‡¤§i Amy¯’Zv¸‡jvi †KvbwU wQj wKbv wRÁvmv Kiæb: (GKvwaK DËi n‡Z cv‡i) (Wv³vix
                            cix¶v/‡gwW‡Kj †Uó Gi gva¨‡g) </span>(During pregnancy did the mother have any
                        of the following illnesses or symptoms? (Multiple answer) (Diagnosed by physician/medical
                        test))
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">D”P i³Pvc
                        </span>(Hypertension)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">ü` †ivM
                        </span>(Heart diseases)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Wvqv‡ewUm
                        </span>(Diabetes)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">h¶v
                        </span>(TB)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Mfv©e¯nvq
                            kix‡ii `vbv/jvj‡P †MvUv/R¡i</span> (Rash/Fever during pregnant)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">g„Mx‡ivM/wLuPzbx
                        </span>(Epilepsy/Convulsion)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">RwÛm</span>
                        (Jaundice)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨
                            †ivM (D‡jøL Kiæb)</span> (Other disease (specify))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_1_8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.1. Ab¨vb¨
                            †ivM (DjøL K†iæb)</span>(Other disease (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_1Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.2.1.
                            GB wkï g„Zz¨i Av‡M gv‡qi KZ¸‡jv RxweZ Rb¥, g„Z Rb¥ Ges Mf©cvZ n‡qwQj? (GB wkï mn)
                            0=GKwUI bv,999 =Rvwbbv </span>(How many live births (including the present birth),
                        stillbirths and abortions did the mother have before the baby died? 0= none,999
                        = don't know
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">RxweZ Rb¥</span>(Live
                        births)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_1_1T" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">g„Z Rb¥
                        </span>(Stillbirths)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_1_2T" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Mf©cvZ
                            (wb‡R †_‡K)</span>(Abortions (spontaneous))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_1_3T" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Mf©cvZ/GgAvi
                        </span>(Abortions (induced) or MR)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_1_4T" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.2.2 GB
                            gv‡qi †gvU KZRb wkïi(GB wkï mn) g„Zz¨ n‡qwQj hv‡`i eqm 0-28 w`‡bi g‡a¨? 0=GKwUI
                            bv,999 =Rvwbbv </span>(How many of her live births died as neonates including
                        this death? 0=none, 999 =don't know)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.2.3 g„Z
                            wkïwUi Rb¥µg msL¨v KZ wQj? 999 =Rvwbbv </span>What was birth order of the baby
                        that died? 999 =don't know)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.2.4 GB
                            g„Z wkïwU Mf©avi‡bi Av‡Mi gvwmK Gi ZvwiL (eQi/gvm/w`b):97= †Kvb gvwmK nqwb,999 =Rvwbbv
                        </span>(What the date of her menstrual period before she become pregnant? 97=no
                        period,999 =don't know)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.2.5 wZwb
                            (gv) KZgvm hver Mf©eZ©x wQ‡jb? 999 =Rvwbbv</span>(How many months long was the
                        last pregnancy? 999 =don't know)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_2_5" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3 gv‡qi
                            me©‡kl Mf©ve¯’vq, cÖm‡e mgq ev cÖm‡ei c‡i gv‡qi wK wK RwUjZv n‡qwQj?wb‡Pi cÖwZwU
                            welq m¤ú©‡K wbwðZ nb:</span>((Did the mother have any of the following illness
                        or complications during her last pregnancy, labour orafter delivery (record all
                        responses)? Keep probing: )
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.1.
                            wLuPzbx (Mf©Kvjxb, cÖmei mgq ev cÖmei ci)</span> (Convulsions during pregnancy,
                        labor, or after delivery)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.2.cÖm‡ei
                            c~‡e© i³cvZ</span> (Antenatal bleeding)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.3.
                            cÖmec~e© ev”Pvi bovPov eÜ/K‡g hvIqv</span> (Baby stopped/reduced playing in
                        womb before labour)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.4.
                            Mf©ve¯’vq R¡i</span> (Did the mother have Fever/Febrile illness during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.5.
                            cÖmeKvjxb AwZwi³ i³cvZ</span> (Did the mother have Excessive bleeding during
                        pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.6.
                            cÖme e¨_v ïiæi 1 w`b ev Zvi Av‡M cvwb fv½v</span> (Did the mother have Water
                        broke 1 or more days before labour)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.7.
                            cvwb fv½v-cvwb ev`vgx/meyR/njy` is‡qi/`yM©Ühy³ </span>(Did the mother have Amniotic
                        fluid was thick or green)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.8.
                            Kó`vqK cÖme</span> (Did the mother have Difficult labour)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.9.
                            `xN©vwqZ/Kó`vqK cÖme (12 NUv +)</span> (Did the mother have Prolonged labour
                        (12 hours +))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_9" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.10.
                            Dëv cÖme</span> (Did the mother have Baby delivered feet first (Breech presentation))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_10" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.11.
                            cÖm‡ei c~‡e© nvZ Av‡M Av†Mv</span> (Did the mother have Hand prolapse)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_11" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.12.
                            evPv AvovAvwo _vKv</span> (Did the mother have Tranverse lie of fetus)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_12" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.13.
                            bvox Av‡M Av†Mv (cÖme Kv‡j) </span>(Did the mother have Umbilical cord came
                        out before delivery)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_13" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.14.
                            bvox wkïi Mjvq cPuvbv</span> (Did the mother have Umbilical cord circled around
                        the neck of baby)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_14" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.15.
                            cv dvjv/gyL dvjv</span> (Did the mother have Oedematous swelling in legs/hands)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_15" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.16.
                            RwÛm (Mf©Kvjxb)</span> (Did the mother have Jaundice during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_16" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.17.
                            ïay d¨vKvk (nvZi Zvjy, †PvL ev bLi m¤§yLfvM)-Mf©Kvjxb</span> (Did the mother
                        have Pallor only (pale palms, eyes, or nail beds) during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_17" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.18.
                            Mf©ve¯nvq `LZ d¨vKvk Ges NbNb k¦vm (DfqB) bIqv</span> (Did the mother have Pallor
                        and shortness of breath (both present) during pregancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_18" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.19.
                            njy` eY© †PvL-Mf©Kvjxb</span> (Did the mother have Yellow discoloration of the
                        eyes during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_19" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.19G.
                            njy` eY© Pvgov-Mf©Kvjxb</span> (Did the mother have Yellow discoloration of
                        sK†in during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_19a" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.20.
                            Mf©ve¯nvq gv_v e¨_v</span> (Did the mother have Headache during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_20" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.21.
                            Mf©ve¯nvq Svcmv `Lv</span> (Did the mother have Blurred vision during pregancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_21" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.22.
                            ‡hvbx c‡_ MÜhy³ mv`v mªve wbM©Z nIqv </span>(Did the mother have Smelly vaginal
                        discharge during pregnancy)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_22" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.23.
                            gvivZ¡K †cUe¨_v(cÖme e¨_v bq) </span>(Did the mother have Severe abdominal pain
                        (but not labour pain) during pregnancy, labor or after delivery))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_23" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.24.
                            cÖme e¨_vi w`b R¡i</span> (Did the mother have fever on the day labour started)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_24" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.25.
                            gyyL †dvjv</span> (Did the mother have Puffy face/swelling leg during pregnancy,
                        labor or after delivery)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_25" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.26.
                            nVvr AÁvb nIqv-(Mf©Kvjxb, cÖmei mgq ev cÖmei ci)</span> ( Did the mother have
                        Sudden unconsciousness during pregnancy, labor or after delivery)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_26" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3.27.
                            Ab¨vb¨ (DjøL K†iæb)</span> (Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3_27" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3. Ab¨vb¨
                            (DjøL K†iæb)</span>(Other disease (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_3Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12">
                        Validation: If answer 17 is 1 in 6.3, continue to question 6.3.1. If answer 17 is
                        0 or 999 and the answer to 19 is 1 in 6.3, continue to 6.3.4 . Otherwise skip 6.3.7.
                        and if 6.7 in 6.3 is 0 or 999 skip 6.3.7.
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.1.
                            KZ w`b hver gv‡qi nvZi Zvjy, †PvL ev bL d¨vKvk `LvwQj? (gvm, w`b; 999 = ARvbv )
                        </span>(For how long, did the mother have pale palms, eye or nail beds? (Month,Day;999=don't
                        Know))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_3a_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.2G
                            KZw`b a‡i Zvi ‡PvL iO nj‡`†U ‡`Lvw”Qj? (gvm, w`b; 999 = ARvbv ) </span>(For
                        how long did she have yellow discoloration of eyes? (Month,Day;999=don't Know))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_3a_2a" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.2we
                            KZw`b a‡i Zvi kixi nj‡`†U ‡`Lvw”Qj? (gvm, w`b; 999 = ARvbv ) </span>( For how
                        long did she have yellow discoloration of body? (Month,Day;999=don't Know))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_3a_2b" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.3
                            Mf©avi‡Yi Av‡M gv†qi wK KLbI wK nv‡Zi Zvjy, †PvL ev bL d¨vKv‡k n‡qwQj?</span>
                        (Did the mother have pale palms, eyes or nail beds before the pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3a_3" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.4.
                            Mf©aviYi Av†M gv‡qi KZevi Zvi nvZi Zvjy, †PvL ev bL d¨vKvk n†qwQj?</span> (How
                        many times before the pregnancy did she have pale palms, eyes, or nail beds?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3a_4" runat="server" Style="font-style: normal;"
                            RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= 1 time </span> <span class='RadioButtonListNormalFontBangla'>(1 time) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= 2-5 times </span> <span class='RadioButtonListNormalFontBangla'>(2-5 evi) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= 6-10 times </span> <span class='RadioButtonListNormalFontBangla'>(6-10 evi) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= More than 10 times </span> <span class='RadioButtonListNormalFontBangla'>(10 evii ekx) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know </span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.5.
                            Mf©avi‡bi Av‡M Zvi ‡Pv†Li iO wK nj‡` e‡Y©i n‡qwQj?</span> (Did s/he ever have
                        yellow discoloration of the eyes/sK†in before the pregnancy that led to death?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3a_5" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.6.
                            Mf©avi‡bi Av‡M KZevi Zvi ‡Pv†Li iO nj‡` e‡Y©i n‡qwQj?</span> (How many times
                        before the pregnancy did s/he have yellow discoloration of the eyes/sKin?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3a_6" runat="server" Style="font-style: normal;"
                            RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= 1 time </span> <span class='RadioButtonListNormalFontBangla'>(1 time) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= 2-5 times </span> <span class='RadioButtonListNormalFontBangla'>(2-5 evi) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= 6-10 times </span> <span class='RadioButtonListNormalFontBangla'>(6-10 evi) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= More than 10 times </span> <span class='RadioButtonListNormalFontBangla'>(10 evii ekx) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know </span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.7.
                            cvwb fv½vi KZ NUv ci wkïwU Rb¥ wQj?</span> (How many hours after the water broke
                        was the baby born?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_3a_7" runat="server" Style="font-style: normal;"
                            RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= <24 hours</span> <span class='RadioButtonListNormalFontBangla'>(<24 NUv) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= >24 hours</span> <span class='RadioButtonListNormalFontBangla'>(>24 NUv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>888= Not applicable</span> <span class='RadioButtonListNormalFontBangla'>(cÖhvR¨ bq) </span> "
                                Value="888"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.3K.8.
                            cÖme e¨_v KZ NUv wQj? </span>(How long was the delivery labour?)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_3a_8" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.4. wkïwU
                            wKfv‡e f~wgó n‡qwQj? </span>(How was the baby delivered?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_4" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Normal Vaginal delivery</span> <span class='RadioButtonListNormalFontBangla'>(bigvj †Wwjfvix) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Vaginal use of saline & drug </span> <span class='RadioButtonListNormalFontBangla'>(m¨vjvBb I Jla cÖ‡qv‡M gva¨‡g bigvj †Wwjfvix) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Episitomy</span> <span class='RadioButtonListNormalFontBangla'>(BwcwmIUwg) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= saline, drug & Episiotomy</span> <span class='RadioButtonListNormalFontBangla'>(m¨vjvBb+Jla+BwcwmIUwg) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Using instrument(ventose/forcep)</span> <span class='RadioButtonListNormalFontBangla'>(hšÍcvwZ e¨envi K‡i(di‡mc)) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= Caesarean</span> <span class='RadioButtonListNormalFontBangla'>(‡cU †K‡U (wmRvwiqvb)) </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.Zvi
                            ‡Wwjfvix †Kv_vq n‡qwQj? </span>(Where was the baby delivered?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Home</span> <span class='RadioButtonListNormalFontBangla'>(evwo) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Govt Medical college hospital</span> <span class='RadioButtonListNormalFontBangla'>(miKvix  LvZ: ‡gwW‡Kj K‡jR nmwcUvj) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Specialised govt. Hospital</span> <span class='RadioButtonListNormalFontBangla'>(we‡klvwqZ miKvix  nmwcUvj) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= District hospital</span> <span class='RadioButtonListNormalFontBangla'>(‡Rjv nmwcUvj ) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= MCWC</span> <span class='RadioButtonListNormalFontBangla'>(GgwmWweøIwm) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= Upazila health complex</span> <span class='RadioButtonListNormalFontBangla'>(Dc‡Rjv ¯^v¯’¨ Kg‡cøKª ) </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= Other Govt. hospital (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ miKvix nmwcUvj (D‡jøL Kiæb) ) </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= NGO static clinic</span> <span class='RadioButtonListNormalFontBangla'>(GbwRI wK¬wbK ) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= NGO Hospital</span> <span class='RadioButtonListNormalFontBangla'>(GbwRI nmwcUvj) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Other NGO Hospital (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ GbwRI nmwcUvj (D‡jøL Kiæb) ) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= Priv. Hospital/clinic</span> <span class='RadioButtonListNormalFontBangla'>(cÖvB‡fUu nmwcUvj / wK¬wbK ) </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'> 12= Other priavte medical college Hospital (specify) </span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ cÖvB‡fUu ‡gwW‡Kj K‡jR nmwcUvj (D‡jøL Kiæb) ) </span> "
                                Value="12"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>13=In-transit</span> <span class='RadioButtonListNormalFontBangla'>(cw_ga¨) </span> "
                                Value="13"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Other (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (DjøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>( Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5. Ab¨vb¨
                            (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.1 hw`
                            †Kvb ¯^v¯’¨‡mev cÖwZôv‡b ‡Wwjfvix n‡q _v‡K Zv n‡j Zvi bvg I wVKvbv wjLyb </span>
                        (If delivered in a health facility,write its name and address)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.2 hw`
                            cÖmeKvh© evox‡Z/ cw_g‡a¨ n‡q _v‡K Zvn‡j cÖavbZ †K †K RwoZ wQj? (GKvwaK DËi n‡Z cv‡i)</span>(If
                        delivered at home/in-transit,who were involved in conductingdelivery?(Multiple responsespossible))
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Wv³vi-GgweweGm</span>
                        (Doctor-MBBS)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_1" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">bvm©/GgWweøI/GjGdwcwf/GdWweøIwf/mvKgv</span>
                        (Nurse/MW/LFPV/FWV/SACMO)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_2" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wmGmweG(GdWweøIG/GBPG
                            UªBbvi)</span> (CSBA (FWA/HA trained))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_3" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wUweG (cÖw&k¶Y
                            cÖvß `vB)</span> (Trained TBA)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_4" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wUweG(AcÖw&k¶Y
                            cÖvß `vB)</span> (Untrained TBA)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_5" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">AvZ¥xq/cÖwZekx</span>
                        (Relative/neighbour)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_6" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">MÖvg Wv³vi/cjøx
                            wPwKrmK</span> (Village doctor/palli chikitshok)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_7" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">KweivR/nvKxg/nvwgIc¨v_</span>
                        (Kabiraj/hakim/homeopath)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_8" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">ag©xq/Ava¨vZ¥xK
                            (Svo-dzK)</span> (Religious/spiritual healer)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_9" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wbR</span>
                        (Self)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_10" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨
                            (DjøL Kiæb)</span> (Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_2_11" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.2.
                            Ab¨vb¨ (DjøL K†iæb) </span>(6.5.2 Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5_2Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.3.
                            cÖme K†iv‡bvi Rb¨ †Kvb we‡kl e¨e¯nv/c×wZ e¨envi K‡iwQj wK? (GKvwaK DËi n‡Z cv‡i)</span>(
                        What did the birth attendent(s) do to deliver the baby?)
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡hvbx c‡_
                            nvZ XzwK‡qwQj? </span>(Inserted hand into vagina)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_1" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Jla LvBqwQj</span>
                        (Gave medicine)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_2" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvsm †ckx‡Z
                            Bb‡RKkb w`‡qwQj?</span> (Pushed injection in muscle)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_3" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wkiv‡Z
                            Bb‡RKkb w`‡qwQj?</span> (Pushed injection in vain)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_4" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡c‡U Pvc
                            w`‡qwQj </span>(Applied pressure on balley)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_5" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gy‡L Pz‡ji
                            ‡MvQv ¸‡R w`‡qwQj?</span> (Put hair bundle into mouth)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_6" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡ZZz‡ji
                            im LvB‡qwQj?</span> (Fed turmeric juice)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_7" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">g¨wRK IqvUvi
                            LvB‡qwQj /w`‡qwQj?</span> (Gave/fed magic water/oil))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_8" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">SvoduzK
                            KiwQj</span> (blew magic air)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_9" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">KuvPv wWg/Ab¨wcwQj
                            wKQy Rivqyi c_ w`qwQj</span> (Made birth canal slipery (raw egg))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_10" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨
                            (DjøL Kiæb)</span> (Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_11" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Kvb wKQyB
                            Kiv nqwb</span> (Did not do anything)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_3_12" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.3.
                            Ab¨vb¨ (DjøL K†iæb) </span>( Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5_3Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.4.
                            GB wkïi gZz¨ Kvj gv‡qi eqm KZ wQj? </span>( What was age of the mother at the
                        time the baby died?)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.5.
                            gv wK cÖme c~e© mev wbqwQj?</span> (Did the mother receive antenatal care?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.6.
                            gv wK wUwU wUKv wbqwQj?</span> (Did the mother receive TT vaccine?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 6.5.8)</span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 6.5.8)</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.7.
                            KZ WvR wUwU wUKv wbqwQj? </span>(How many doses did she receive?)
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_5_7" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.5.8.
                            gv‡qi ¯^v¯n¨ GLb †Kgb?</span> (How is the mother health now?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_5_8" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Healthy</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2=Not healthy (ill)</span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3=Not alive</span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.1 Mf©Kvjxb
                            mgq gv‡qi cvqLvbvi is †Kgb wQj? </span>(What was the colour of the mother`s
                        stool during pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_1" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Normal</span> <span class='RadioButtonListNormalFontBangla'>(¯^vfvweK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pale, clay or ash color</span> <span class='RadioButtonListNormalFontBangla'>(d¨vKvm, Kv`v ev QvB iOi) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Black</span> <span class='RadioButtonListNormalFontBangla'>(Kvj) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Fresh blood mixed</span> <span class='RadioButtonListNormalFontBangla'>(UvUKv i³ hy³) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.2 Mf©Kvjxb
                            mgq gv‡qi cÖmªªvei is wK†ic wQj? </span>(What was the colour of the mother`s
                        urine during pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_2" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Dark yellow</span> <span class='RadioButtonListNormalFontBangla'>( Mvo njy`) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Blood mixed</span> <span class='RadioButtonListNormalFontBangla'>(i³wgwkªZ) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Deep brown</span> <span class='RadioButtonListNormalFontBangla'>(Mvo ev`vgx) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Like lime water</span> <span class='RadioButtonListNormalFontBangla'>(Pzbi cvwbi gZ (Nvjv)) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨(DjøL¨ Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.2 Ab¨vb¨
                            (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q6_6_2Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.3 Mf©Kvjxb
                            mgq Zvi wK †cU e¨_v wQj?</span> ( Did she have abdominal pain during pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.4 hw`
                            e¨_v _v‡K Zvn‡j wK †mwU Dc†ii Wvb †c‡U wQj?</span> (If so, was it located in
                        the upper right quadrant?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.5 Mf©Kvjxb
                            mgq gv wK gvivZK `~e©jZvi m¤§yLxb n†qwQj?</span> (Did the mother experience
                        severe weakness during her pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.6 Mf©Kvjxb
                            mgq gv‡qi ¶yav wK K†g wM†qwQj?</span> (Was the mother`s appetite decreased during
                        pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.6G
                            Mf©Kvjxb mgq gv wK `x©N¯vqx wjfvii †ivM ?</span> (Did the mother have chronic
                        liver disease during pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_6a" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.6we
                            Mf©Kvjxb mgq gv‡qi Pvgovq wK †Kvb PzjKvwb wQj?</span> (Did the mother have any
                        itching of the sK†in during pregnancy?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_6b" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.6wW
                            gv wK KLbI Mvg©Um d¨vKUvix/Kvb ivmvqwbK, is Gi KviLvbvq KvR K†i†Q?</span> (
                        Did the mother ever work in a garment factory or with any chemical dyes?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_6d" runat="server" Style="font-style: normal;"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">6.6.7gv
                            wK KL‡bv g`¨cvb A_ev †bkv K†i‡Zb †hgb †dbwmwWj, c¨v‡_wWb,giwdb, Ny‡gi ewo A_ev †n‡ivBb?</span>
                        (Did the mother ever use alcohol or drugs such as phensidy, pathedine/morphine,
                        sleeping tablets, or heroin?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq6_6_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 7----------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                VII. CONDITIONS OF THE BABY SOON AFTER BIRTH
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.1 wkïwU
                            wK GKK ev RgR bv wK `yBqi AwaK Rb¥ wQj?</span> (Was the baby a singleton or
                        multiple birth?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_1" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Singleton</span> <span class='RadioButtonListNormalFontBangla'>(GKK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Twin</span> <span class='RadioButtonListNormalFontBangla'>(RgR) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Multiple</span> <span class='RadioButtonListNormalFontBangla'>(`yBqi AwaK) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.2 R‡b¥i
                            mgq ev”PvwUi wK †Kvb A½ weK…wZ wQj? (†hgb- †VuvU KvUv, cv euvKv, weK…Z nvZ BZ¨vw`)</span>
                        (Did the baby have any malformations at birth? (cleft lip, curved legs, deformed
                        hands, etc))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 7.4)</span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 7.4)</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.2 ms†¶†c
                            weK„Z A†½i weeib w`b</span>(Describe malformations)
                    </div>
                    <div class="col-sm-6">
                        <span id="q7_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.4 Rb¥
                            IRb (†KwR†Z) 72 NÈvi g†a¨</span>(Weight (kg) within 72 hours of birth)
                    </div>
                    <div class="col-sm-6">
                        <span id="q7_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.5 Rb¥†i
                            mgq wkïwUi AvKvi wK†izc wQj? </span>(At the time of birth what was the size
                        of the baby?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_5" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Very small</span> <span class='RadioButtonListNormalFontBangla'>(Lye QvU) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Smaller than average</span> <span class='RadioButtonListNormalFontBangla'>(¯^vfvweKi Pq QvU) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= About average</span> <span class='RadioButtonListNormalFontBangla'>( ¯^vfvweK) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Larger than average</span> <span class='RadioButtonListNormalFontBangla'>(¯^vfvweKi Pq eo) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.6 R†b¥i
                            ci wkïwU wK ¯^vfvweK k¦vm wb†qQ? (nVvr k¦vm bqv ev mvgvb¨ k¦vm-cÖk¦v†mi †Pôv GLv†b
                            AÍf©³ n†e bv) </span>(Was the baby able to breathe normally after delivery?
                        (This does not include gasps or very brief efforts to breathe))
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.7 R†b¥i
                            ci †m wK Avcbv Avcwb Kvu`†Z †c†iwQj?</span> (Was the baby able to cry after
                        birth?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 7.7)</span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 7.7)</span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.8 R†b¥i
                            KZ¶b (wgwbU) c†i †Ku†`wQj?</span>(How long after birth the baby was able to
                        cry (in minutes)?)
                    </div>
                    <div class="col-sm-6">
                        <span id="q7_8" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.9 wkïwU
                            wK KLbI bovPov K†iQ, mvgvb¨ n†jI?</span> (Did the baby ever move, even a little?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_9" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes(Skip to 7.12)</span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12" style="font-weight: bold;">
                        <p>
                            Validation: If (7.6 = 0 or 999) AND (7.7 = 0 or 999) AND (7.9 = 0 or 999) continue
                            to 7.10. Otherwise skip to 7.12.
                        </p>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.10 wkïwU
                            R†b¥i ci hw` KLbI bv Kuv†`, k¦vm bv †bq A_ev †Kvb bovPov bv K†i, Z†e wkïwU wK g„Z
                            Rb¥ wb†qwQj?</span> (If the baby did not cry, breathe, or move, was it born
                        dead?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_10" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.11 R†b¥i
                            ci wkïwUi K†ixi cP†bi j¶Y wQ†jv? </span>(Was the baby macerated, that is, did
                        it show signs of decay?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_11" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> " Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.12 R†b¥i
                            ci bvox KvUvi ¯nv†b Kvb wKQy `qv n†qwQjv wK?</span> (Was anything applied to
                        the umbilical cord stump after birth?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_12" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 7.14) </span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 7.14) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.13 wK
                            w`†qwQj? D†jøL K†iæb:</span>(What was applied? Specify)
                    </div>
                    <div class="col-sm-6">
                        <span id="q7_13" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.14 R†b¥i
                            mgq wkïwUi Mv†qi eb© †Kgb wQj? </span>(What was the colour of the baby at birth?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq7_14" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Normal</span> <span class='RadioButtonListNormalFontBangla'>(¯^vfvweK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pale</span> <span class='RadioButtonListNormalFontBangla'>(d¨vKvk) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Blue</span> <span class='RadioButtonListNormalFontBangla'>(bxj) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Other (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (DjøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">7.14 Ab¨vb¨
                            (D†jøL K†iæb)</span>( Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q7_14Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
            </div>
            <%-------------------------------------------------Section 8----------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                VIII.NEONATAL ILLNESS HISTORY
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.1. g„Zz¨i Av‡M wkïwU KZw`b hver Amy¯’ wQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(For how long (days) was the baby ill before s/he died?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12">
                       Validation: If 3.6 = 00/00/00 and 8.1=00, skip to section 11
                    </div>
                </div>
             
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.2. ‡kl Amy¯’Zvi mgq Zvi wK wLuPzbx wQj?</span> (During the last illness, did s/he have spasms or convulsions?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.5) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.5) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.3. wLuPzbxi mgq K†ixi k³ Ges aby‡K†i gZ euvKv n‡q ‡hZ wKbv?</span> ( Did the baby become stiff and have a bow-like body during convulsion?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.4. R‡b¥i KZw`b ci wLuPzbx ïiæ n†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after the birth, did the baby develop convulsions?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.5.wkïwU wK gyL Lyj‡Z †Kvb Amyweav m¤§yLxb n‡qwQj?</span> (Did she have difficulty in opening the mouth?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.6) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.6) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.5.1. KZw`b ch©Í wkïwU gyL Lyj‡Z cv‡iwb? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How long (in days) was she unable to open the mouth? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_5_1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.5.2. wkïwUi ‡VuvU, bv‡K†i Dc‡i, Kv‡bi jwZ ev b‡Li m¤§yLfvM wK bxj n‡q wM‡qwQj?  </span> (Were the baby lips, tip of the nose, ear beds, or nail beds blue?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_5_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.6. me©‡kl Amy¯’Zvi mgq wkïwU wK Abyfy~wZnxb ev AÁvb n‡qwQj?</span> (During the illness that led to death, did s/he become unresponsive or unconscious?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.8) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.8) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.7. R‡b¥i KZw`b ci wkïwU Abyf~wZnxb ev AÁvb n†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth did the baby become unresponsive or unconscious?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_7" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.8. †kl Amy¯Zvi mgq Zvi gv_vi Pvuw` wK dz†jwQj? </span> (During the last illness, did s/he have bulging of the fontanelle?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.10) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.10) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.9. R†b¥i KZ w`b ci gv_vi Puvw` dzj wM†qwQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth, did the baby have bulging? (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_9" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.10. gv_vi Puvw` ev Zvjy wK †W†e wM†qwQj? </span> (Was the fontanelle sunken?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_10" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.10.1. †PvL wK †W†e wM†qwQj? </span> (Was the eyeball sunken?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_10_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.11. me©†kl Amy¯Zvi mgq wkïwUi wK Kvuwk wQj? </span> (During the illness that led to death, did the baby have a cough?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_11" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.13) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.13) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.12. R†b¥i KZw`b ci †_†K Kvuwk wQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth, the baby had cough?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_12" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.13. me©†kl Amy¯Zvi mgq wkïwU wK Nb Nb k¦vm †djZ? </span> (During the last illness, did the baby have fast breathing?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_13" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.15) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.15) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.14. R†b¥i KZw`b ci Nb Nb k¦vm †djZv?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth did the baby have fast breathing?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_14" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.15. me©†kl Amy¯Zvi mgq Zvi wK k¦vmKó n†qwQj? </span> (During the last illness, did s/he have difficulty in breathing?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_15" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.17) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.17) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.16. R†b¥i KZw`b ci Zvi k¦vmKó ïiæ n†qwQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth the baby have difficulty in breathing?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_16" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.17. me†©kl Amy¯Zvi mgq k¦vm †djZ ey†K†i LvPuv wK †ekx †W†e †hZ? </span> (During the last illness, did s/he have indrawing of chest?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_17" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.18. me†©kl Amy¯Zvi mgq wkïwUi k¦vm-cÖk¦vmi mgq wK A¯^vfvweK (Mi Mi Qvov) kã n†Zv? </span> (During the last illness, did s/he have grunting during respiration?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_18" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.19. k¦vm †bIqvi mgq wkïwUi bvmviÜª dz†j †hZv wK? </span> (Did the baby have flaring of the nostrils during respiration?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_19" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.20. †kl Amy‡Li mgq KL‡bv wkïwUi ¶wb‡K†i Rb¨ k¦vm †_‡g †_‡g Avevi wK k¦vm Pvjy n‡qwQj? </span> (During the last illness, did the baby ever have short period of stopping and restarting breathing?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_20" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.21. me©†kl Amy¯Zvi mgq Zvi wK R¡i wQj? </span> (During the illness that led to death, did s/he have fever?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_21" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.24) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.24) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.22. R¡i KZw`b ci R¡i ïiæ n‡qwQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days did the fever last?(00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_22" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                -----------------------------------------------------------------------------------------------
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.23. R¡ii gvÎv †Kgb wQj? </span>(How severe was the fever?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq8_23" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Mild</span> <span class='RadioButtonListNormalFontBangla'>(mvgvb¨) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Moderate</span> <span class='RadioButtonListNormalFontBangla'>(‡gvUvgywU) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Severe</span> <span class='RadioButtonListNormalFontBangla'>(gvivZœK) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.24. me©‡kl Amy¯’Zvi mgq ev”Pvi kix‡i nvZ w`‡j kixi wK VvÛv g‡b n‡Zv? </span> (During the last illness, did his/her body feel cold when touched?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_24" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.26) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.26) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.25. g„Zz¨i KZ w`b/NÈv Av†M †_†K K†ixi VvÛv wQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How many days before the baby died, did his/her body feel cold when touched? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_25" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.26. me©†kl Amy†Li mgq wkïwUi wK nvZ cv bovPov eÜ ev K†g wM†qwQj? </span> (During the last illness, did s/he stop/reduce movement of body parts?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_26" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.28) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.28) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.27. g„Zz¨i KZw`b/NÈv Av†M †_†K nvZ cv bov Pov eÜ ev K†g wM†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How many days before the baby died did s/he stop/reduce movement of body parts? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_27" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>

                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.28. wkïwUi Kvb †_†K wK cyuR †ei nZv? </span> ( Did the baby had pus draining from ear?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_28" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>

                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.29.g„Zz¨i Av†M †m wK Kuv`v eÜ K†i w`†qwQj? </span> (Did the baby stopped crying before s/he died?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_29" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(Skip to 8.31) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(Skip to 8.31) </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.30. g„Zz¨i KZ w`b Av†M wkïwU Kvu`v eÜ K†i w`†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How many days before death, did the baby stop crying? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_30" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31. Avcbvi wkï wK KLbI eyK†i `ya LvB†qQb?</span> (Did you ever breast feed the baby?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes(Skip to 8.31.2)</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-12">
                      Validation: If 8.31 is 1, skip to 8.31.2
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31.1 ‡Kb Avcwb Avcbvi wkï‡K ey‡Ki `ya LvIqvbwb (GKvwaK DËi MÖnb‡hvM¨) </span> (Why didn't you breast feed the baby? (Multiple responses possible))
                 </div>
                </div>

                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvqi eyKi KLbB `ya Avmwb </span> (The milk never came to the mother's breast.)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvqi eyKi `ya eÜ n‡qwM‡q‡Q </span> (Mother stopped producing breast milk)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wkïwU Amy¯ wQj Ges m eyKi `ya cvb KiZ cviwQj bv </span> (The baby was sick and wouldnt drink breast milk)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wkïwU mgqi AvM Rb¥MÖnY KiwQj Ges wVKgZ `ya UvbZ cviwQj bv. </span> (The baby was premature and didn`t have sucking reflex)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvqi ¯Íb ‡ivM wQj, ‡hgb K¨vÝvi, wUDgvi ev Avjmvi </span> (The mother had a disease of the breast, such as abscess or ulcer.)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvqi wbcj  mgm¨v wQj</span> (There was defect in the mother`s nipples.)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gv eyKi `ya w`Z PvBwb </span> (Mother did not want to breast feed)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                   <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨(DjøL¨ Kiæb)</span> (Other (specify))
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_1_8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31.1. Ab¨vb¨(DjøL¨ Kiæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_31_1Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31.2. wkïwUi R†b¥i KZ¶Y c†i Avcwb Zv†K cÖ_g eyK†i `ya w`†qwQjb? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How long after birth did you first breast feed the baby? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_31_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31.3. wkïwUK KLbI eyK†i `ya Qvov Ab¨vb¨ Lvevi w`†qwQjb wK(Lv`¨,cvwb,wmwiqvj, BZ¨vw`)?</span> (Did you ever feed the baby anything other than breast milk (food, water, formula, etc.)?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_31_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.31.4. wkïwU†K hLb cÖ_g ey‡Ki `ya Qvov Ab¨vb¨ Lvevi ev Zij Lv`¨ LvB‡qwQ‡jb ZLb Zvi eqm KZ wQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )(mßvn / w`b )</span>(How old was the baby when you first fed him/her foods or liquids other than breast milk (food, water, formula, etc.)? (00=from birth,999=don't Know )(weeks/days))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_31_4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.32. †Kb Avcwb Avcbvi †QvU wkïK eyK†i `ya e¨wZZ Ab¨vb¨ Lv`¨ ev Zij Lvevi w`†Z ïiæ K†iwQ†jb? (GKvwaK DËi MÖnb‡hvM¨) </span> (Why did you begin feeding the youngest child foods or liquids other than breast milk? (Multiple responses possible))
                 </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gvqi eyKi `ya eÜ n‡qwMqQ</span> (The mother had a disease of the breast, such as abscess or ulcer.)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_32_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wkïwU Amy¯’ wQj Ges †m ey‡Ki Ges m eyKi `ya cvb Ki‡Z cviwQj bv  </span> (The baby was sick and wouldnt drink breast milk)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_32_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wkïwU fvjfv‡e †e‡o D‡Vwb </span> (The baby was not growing well)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_32_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gv eyKi `ya w`‡Z PvBwb</span> (Mother did not want to breast feed)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_32_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨(D‡jøL¨ Kiæb)</span> (Other (specify))
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_32_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.32. Ab¨vb¨(DjøL¨ Kiæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_32Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.33. R‡b¥i ci wkïwU wK ¯^vfvweK fv‡e ïa~  ey‡Ki `ya/†evZ‡ji `ya cvb eÜ K‡i w`‡qwQ‡jv?  </span>(Did the baby stop being able to suck breast or bottle in a normal way?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq8_33" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Yes</span> <span class='RadioButtonListNormalFontBangla'>(nuu¨v) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= No</span> <span class='RadioButtonListNormalFontBangla'>(bv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Did not suck(Skip to 8.35)</span> <span class='RadioButtonListNormalFontBangla'>(ya cvb ïiæ K‡i bvB) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know(Skip to 8.35)</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.33G wkïwU hw` ¯^vfvweKfve `ya cvb eÜ bv K†i Zvnj wK Amy¯Zvi Rb¨ `ya cvb eÜ K†iwQj?</span> ( If the baby did not stop sucK†ing/bottle feeding in a natural way did he stopped it due to illness?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_33a" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.34. R†b¥i KZw`b ci wkïwU `ya cvb eÜ K†i w`†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )(w`b/ NÈv)</span>(How long after birth did you first breast feed the baby? (00=from birth,999=don't Know )(days/hours))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_34" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.35. ‡kl Amy¯’Zvi mgq wK Zvi nv‡Zi Zvjy ev cv‡qi Zjv njy` e†b©i n†q wM†qwQj?</span> (During the last illness, did s/he have yellow palms or soles?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_35" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.38) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.38)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.36. R†b¥i KZw`b ci Zvi nvZi Zvjy ev cv†qi Zjv njy` n†Z ïiæ K†iwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after the birth, did the yellow palms or soles begin?   (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_36" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.37. KZw`b hver nv†Zi Zvjy ev cv†qi Zjv njy` n†qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(For how many days did the baby have yellow palms or soles? (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_37" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.37G me©†kl Amy¯Zvi mgq wK Zvi Pvgov njy` e†b©i n†q wM†qwQj?</span> (During the last illness, did she have yellow discoloration of sKin?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_37a" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.38) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.38)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.37we KZw`b hver Zvi Pvgov njy` e†b©i n†q wM†qwQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days, s/he had the yellow discoluration of the sKin? (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_37b" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.38. me©†kl Amy¯Zvi mgq wK Zvi †PvL njy` e†b©i n†q wM†qwQj?</span> (During the last illness, did she have yellow discoloration of eyes?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_38" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.40) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.40)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.39. KZw`b hver Zvi †PvL njy` e†b©i n†q wM†qwQj?(00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days, s/he had the yellow discoluration of the eyes? (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_39" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.40. †h Am†yL wkïwU gviv †M†Q †mB Amy†Li mgq wkïwUi nv†Zi Zvjy A_ev b†Li m¤§yLfvM d¨vKvk n†q wM†qwQj ?</span> (During the illness leading to death did the baby look pale or have pale palms, eyes or nail beds?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_40" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.41. me©†kl Amy¯Zvi mgq wK Zvi bvfx jvj n†qwQj ev bvfx w`†q cu~uR coZ?</span> (During the last illness, did s/he have redness around or drainage from the umbilical cord stump?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_41" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.42. me©†kl Amy¯Zvi mgq wK Pvgovq cuyRfwZ© †dvmKv ev †MvUv n†qwQj?</span> (During the last illness, did s/he have sK†in rash with blisters containing pus?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_42" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.43.‡kl Amy¯’Zvi mgq Zvi kix‡ii †Kvb ¯’vb n‡Z i³cvZ n‡qwQj?</span> (During the illness that led to death, did s/he bleed  from anywhere?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_43" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.44. ‡Kv_v †_‡K Zvi i³cvZ n‡q‡Q? (GKvwaK DËi n‡Z cv‡i) </span> (From where did s/he bleed? (multiple responses possible))
                 </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">gyL</span> (From mouth)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_44_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">bvK</span> (From nose)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_44_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">bvfx</span> (From umbilicus)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_44_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">cvqyc_</span> (Per rectum)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_44_4" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨ </span> (Other)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_44_5" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>

                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.44. Ab¨vb¨ (DjøL K†iæb)</span>(8.44 Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_44Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.45. me©‡kl Amy¯’Zvi mgq Zvi wK Wvqwiqv (Nb Nb cvZjv  cvqLvbv) n†qwQj?</span> (During the last illness, did s/he have diarrhoea (more frequent and liquid stools than usual)?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_45" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.48) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.48)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.46. Wvqwiqv KZw`b ¯’vqx n‡qwQj? (00 =Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days, did the diarrhoea last? (00=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_46" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.46.1. cvqLvbv wK ai‡bi wQj?  </span>(What was the type of stool?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq8_46a" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Soft without mucuous</span> <span class='RadioButtonListNormalFontBangla'>(big, Avg Qvov) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Soft with mucuous</span> <span class='RadioButtonListNormalFontBangla'>(big, Avg mn ) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Watery</span> <span class='RadioButtonListNormalFontBangla'>(cvwbi gZ) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.47. Wvqwiqv hLb gvivZ¡K wQj m‡e©v”P KZevi cvqLvbv n‡qwQj? (97=memgq, 999= Rvwbbv )</span>(When diarrhoea was most severe, how many times did the baby pass stools in a day?(97=continuous,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_47" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.48. cvqLvbvi mv‡_ i³ †hZ wK?</span> (Was the blood visible in the stools?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_48" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.49.‡kl Amy¯’Zvi mgq Zvi wK ewg n‡qwQj?</span> (During the last illness, did s/he have any vomiting?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_49" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.51) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.51)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.50. R†b¥i KZw`b ci ewg Kiv ïiæ n‡qwQj? (00=Rb¥ †_‡K, 999= Rvwbbv )</span>(How many days after birth, did vomiting start?(97=from birth,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_50" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.51.ewg Kiv hLb gvivZ¡K wQj, m‡e©v”P KZevi ewg K‡iwQj? (97=memgq, 999= Rvwbbv )</span>(When vomiting was most severe, how many times did the baby vomit in a day? (97=continuous,999=don't Know ))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_51" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.52.ewgi mv‡_ i³ †hZ wK?</span> (Did s/he vomit blood?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_52" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.53.me©‡kl Amy¯’Zvi mgq Zvi wK ‡cU †du‡c/dz‡j wM‡qwQj?</span> (During the last illness, did s/he have any abdominal distension?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_53" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No (Skip to 8.55) </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know (Skip to 8.55)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.54.KZw`b/N›Uv a‡i GB †cU duvcv/‡dvjv wQj? (97=memgq, 999= Rvwbbv) (w`b/N›Uv)</span>(How many days/hours did s/he have abdominal distension? (97=continuous,999=don't Know )(Days/Hour))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_54" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.55. Zvi wK KLbI cix¶vq nvg aiv c‡owQj?</span> (Was s/he ever diagnosed with measles?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_55" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.56. Zvi wK nv‡gi gZ `vb `vbv n‡qwQj?</span> (Did s/he have a measles like rash?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_56" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.57. Zvi wK cÖmªve Am¦vfvweK wQj?</span> (Was his/her urine abnormal?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_57" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.58. Zvi cÖmªve wK Lye Aí nZ?</span> (Did s/he urinate too little?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_58" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.58.K cÖmªªv‡ei is wKiƒc wQj? </span>(What was the colour of the urine?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq8_58a" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Dark yellow </span> <span class='RadioButtonListNormalFontBangla'>(Mvo njy`) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Blood mixed</span> <span class='RadioButtonListNormalFontBangla'>(i³wgwkªZ) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Deep brown</span> <span class='RadioButtonListNormalFontBangla'>(Mvo ev`vgx ) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Like lime water</span> <span class='RadioButtonListNormalFontBangla'>(Pz‡bi cvwbi gZ (†Nvjv)) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others </span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.58.K Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q8_58aOther" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.59. Zvi †`‡ni ‡Kvb Ask wK Aek n‡q wM‡qwQj?</span> (Did s/he have paralysis of any parts of the body?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_59" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.60. Zvi wK Nvo k³ ev Nvo e¨_v n‡q wM‡qwQj?  </span> (Did s/he have stiff neck or painful neck?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_60" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.61. Zvi †Mvovjx‡Z wK †Kvb ‡dvjv wQj? </span>(Did s/he have any swelling in the ankles?)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="rbtnq8_61" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Yes, in both ankles</span> <span class='RadioButtonListNormalFontBangla'>(nuu¨v, Dfq Mvovjx) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Yes, in only one ankle</span> <span class='RadioButtonListNormalFontBangla'>(nuu¨v, ïay GKwU Mvovjx) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0= No</span> <span class='RadioButtonListNormalFontBangla'>(bv) </span> "
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">8.62. Zvi wK KL‡bv †Kvb wLPzbx n‡qwQj?</span> (Did s/he ever have any seizures/conversion?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq8_62" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know </span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 </div>

             <%-------------------------------------------------Section 9----------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                IX.SURGERY/OPERATION 
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">9.1. g„Zz¨i Av‡M wkïwUi kix‡i †Kvb Acv‡ikb Kiv n‡qwQj wK?</span> (Did the baby have any operation before death?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq9_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(skip to 10.1)</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(skip to 10.1)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>

                   <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">9.2 g„Zz¨i KZw`b Av‡M wkïwUi kix‡i Acv‡ikb Kiv n‡qwQj?(999=Rvwbbv)</span>(How many days before death, did s/he have the last operation?(999 = Don't Know))
                    </div>
                    <div class="col-sm-6">
                        <span id="q9_2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">9.3. kix‡ii †Kvb ¯’v‡b Acv‡ikb Kiv n‡qwQj?(999=Rvwbbv)</span>(What was the site of the operation?(999 = Don't Know))
                    </div>
                    <div class="col-sm-6">
                        <span id="q9_3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">9.3.1 wkïwUi Acv‡ikb †Kv_vq Kiv n‡qwQj? </span> (Where was the operation was done?)
                 </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">miKvix nvmcvZvj</span> (DH & Above)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq9_3_1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Dc‡Rjv ¯^v¯’¨ Kg‡cøKª</span> (UHC)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq9_3_2" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GBPGdWweøIwm/AviwW/Gmwm/wmwm</span> (HFWC/RD/SC/CC)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="rbtnq9_3_3" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GbwRI nvmcvZvj</span> (NGO Hospital)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="q13_5_6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GbwRI wK¬wbK</span> (NGO clinic)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="q13_5_7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">nvmcvZvj/wK¬wbK/cÖvBfU ‡P¤^vi</span> (Hospital/clinic)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="q13_5_8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨ </span> (Others)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="q13_5_9" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡Kvb ¯^v¯¨ ‡K`ª bq</span> (Not from health facility)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="q13_5_10" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">9.3.1 Ab¨vb¨ (DjøL Kiæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="q9_3_10Other" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
            </div>
             <%-------------------------------------------------Section 10----------------------------------------------------%>
            <div class="well" style="border: thin solid #666666;">
                X.MEDICAL CONSULTATIONS
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">10.1. ‡h Amy¯’Zvi Rb¨ wkïwU gviv wM‡qwQj, †m Amy‡Li Rb¨‡Kvb wPwKrmv ‡c‡qwQj wK?</span> (During the illness that led to death, was the baby treated at all?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(skip to 10.1)</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(skip to 10.1)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">10.1.1.wkïwUi g„Zz¨Kvjxb Amy¯’Zvi mgq †K †K Zvi wPwKrmv K‡iwQ‡jb Zv µgvbymv‡i wjLyb? </span> (Write chronologically type of treatment providers consulted:)
                 </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">cÖ_g wPwKrmv`vZv </span>(1st Provider)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Village doctor/palli chikitshok</span> <span class='RadioButtonListNormalFontBangla'>(MÖvg¨/cjøx wPwKrmK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pharmacist/drug seller</span> <span class='RadioButtonListNormalFontBangla'>(dv‡g©mx/Jlawe‡µZv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Homeopath</span> <span class='RadioButtonListNormalFontBangla'>(†nvwgIc¨v_) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Health facility</span> <span class='RadioButtonListNormalFontBangla'>(¯^v¯’¨ †K›`ª) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Private chamber of MBBS doctors</span> <span class='RadioButtonListNormalFontBangla'>(Ggwe weGm) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= SACMO/MA</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= nurse/midwife/FWV</span> <span class='RadioButtonListNormalFontBangla'>(bvm©/wgWIqvBd) </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= Kabiraj/hekim</span> <span class='RadioButtonListNormalFontBangla'>(KweivR/†nwKg) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= Religious/spiritual healer</span> <span class='RadioButtonListNormalFontBangla'>(Ava¨vwZ¥K wPwKrmK/Cgvg) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Family member/relative</span> <span class='RadioButtonListNormalFontBangla'>(cwiev‡ii m`m¨/AvZ¥xq) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= CSBA (Traind/FWA/HA)</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (D‡jøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium"> Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="Span1" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>

                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">wØZxq wPwKrmv`vZv</span>(2nd Provider)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Village doctor/palli chikitshok</span> <span class='RadioButtonListNormalFontBangla'>(MÖvg¨/cjøx wPwKrmK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pharmacist/drug seller</span> <span class='RadioButtonListNormalFontBangla'>(dv‡g©mx/Jlawe‡µZv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Homeopath</span> <span class='RadioButtonListNormalFontBangla'>(†nvwgIc¨v_) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Health facility</span> <span class='RadioButtonListNormalFontBangla'>(¯^v¯’¨ †K›`ª) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Private chamber of MBBS doctors</span> <span class='RadioButtonListNormalFontBangla'>(Ggwe weGm) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= SACMO/MA</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= nurse/midwife/FWV</span> <span class='RadioButtonListNormalFontBangla'>(bvm©/wgWIqvBd) </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= Kabiraj/hekim</span> <span class='RadioButtonListNormalFontBangla'>(KweivR/†nwKg) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= Religious/spiritual healer</span> <span class='RadioButtonListNormalFontBangla'>(Ava¨vwZ¥K wPwKrmK/Cgvg) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Family member/relative</span> <span class='RadioButtonListNormalFontBangla'>(cwiev‡ii m`m¨/AvZ¥xq) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= CSBA (Traind/FWA/HA)</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (D‡jøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium"> Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="Span2" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Z…Zxq wPwKrmv`vZv</span>(3rd Provider)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Village doctor/palli chikitshok</span> <span class='RadioButtonListNormalFontBangla'>(MÖvg¨/cjøx wPwKrmK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pharmacist/drug seller</span> <span class='RadioButtonListNormalFontBangla'>(dv‡g©mx/Jlawe‡µZv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Homeopath</span> <span class='RadioButtonListNormalFontBangla'>(†nvwgIc¨v_) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Health facility</span> <span class='RadioButtonListNormalFontBangla'>(¯^v¯’¨ †K›`ª) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Private chamber of MBBS doctors</span> <span class='RadioButtonListNormalFontBangla'>(Ggwe weGm) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= SACMO/MA</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= nurse/midwife/FWV</span> <span class='RadioButtonListNormalFontBangla'>(bvm©/wgWIqvBd) </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= Kabiraj/hekim</span> <span class='RadioButtonListNormalFontBangla'>(KweivR/†nwKg) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= Religious/spiritual healer</span> <span class='RadioButtonListNormalFontBangla'>(Ava¨vwZ¥K wPwKrmK/Cgvg) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Family member/relative</span> <span class='RadioButtonListNormalFontBangla'>(cwiev‡ii m`m¨/AvZ¥xq) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= CSBA (Traind/FWA/HA)</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (D‡jøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium"> Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="Span3" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">PZz©_/‡kl wPwKrmv`vZv</span>(4th/last Provider)
                    </div>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" Style="font-style: normal;" RepeatDirection="Vertical">
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1= Village doctor/palli chikitshok</span> <span class='RadioButtonListNormalFontBangla'>(MÖvg¨/cjøx wPwKrmK) </span> "
                                Value="1"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>2= Pharmacist/drug seller</span> <span class='RadioButtonListNormalFontBangla'>(dv‡g©mx/Jlawe‡µZv) </span> "
                                Value="2"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>3= Homeopath</span> <span class='RadioButtonListNormalFontBangla'>(†nvwgIc¨v_) </span> "
                                Value="3"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>4= Health facility</span> <span class='RadioButtonListNormalFontBangla'>(¯^v¯’¨ †K›`ª) </span> "
                                Value="4"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>5= Private chamber of MBBS doctors</span> <span class='RadioButtonListNormalFontBangla'>(Ggwe weGm) </span> "
                                Value="5"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>6= SACMO/MA</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="6"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>7= nurse/midwife/FWV</span> <span class='RadioButtonListNormalFontBangla'>(bvm©/wgWIqvBd) </span> "
                                Value="7"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>8= Kabiraj/hekim</span> <span class='RadioButtonListNormalFontBangla'>(KweivR/†nwKg) </span> "
                                Value="8"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>9= Religious/spiritual healer</span> <span class='RadioButtonListNormalFontBangla'>(Ava¨vwZ¥K wPwKrmK/Cgvg) </span> "
                                Value="9"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>10= Family member/relative</span> <span class='RadioButtonListNormalFontBangla'>(cwiev‡ii m`m¨/AvZ¥xq) </span> "
                                Value="10"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>11= CSBA (Traind/FWA/HA)</span> <span class='RadioButtonListNormalFontBangla'>() </span> "
                                Value="11"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>777= Others (specify)</span> <span class='RadioButtonListNormalFontBangla'>(Ab¨vb¨ (D‡jøL Kiæb)) </span> "
                                Value="777"></asp:ListItem>
                            <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999= Don`t Know</span> <span class='RadioButtonListNormalFontBangla'>(Rvwbbv) </span> "
                                Value="999"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium"> Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="Span4" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                     <div class="col-sm-12" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">10.1.2. me©‡kl Amy‡Li mgq Zv‡K †Kv_vq wPwKrmvi Rb¨ wb‡qwQ‡jb? (GKvwaK DËi n‡Z cv‡i)</span> (If treatment received from health facilities, circled relevant health facilities)
                 </div>
                </div>
                  <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">miKvix nvmcvZvj</span> (DH & Above)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GgwmWweøIwm</span> (MCWC)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Dc‡Rjv ¯^v¯¨ Kg‡cøKª</span> (UHC)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GBPGdWweøIwm/AviwW/Gmwm/wmwm</span> (HFWC/RD/SC/CC)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GbwRI nvmcvZvj</span> (NGO Hospital)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList10" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">GbwRI wK¬wbK</span> (NGO clinic)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList11" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">nvmcvZvj/wK¬wbK/cÖvB‡fU ‡P¤^vi</span> (Hospital/clinic)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList12" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">Ab¨vb¨ (DjøL Kiæb)</span> (Others (specify))
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList13" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">‡Kvb ¯^v¯¨ ‡K`ª bq</span> (not from health facility)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList14" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No </span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                <div class="row well" style="border: thin solid #666666;">
                    <div class="col-sm-6" style="font-weight: bold;">
                        <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium"> Ab¨vb¨ (DjøL K†iæb)</span>(Other (specify))
                    </div>
                    <div class="col-sm-6">
                        <span id="Span5" runat="server" class='RadioButtonListNormalFont'></span>
                    </div>
                </div>
                 <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">10.2. g„Zz¨i Av‡M wkïwU‡K nvmcvZv‡j/wK¬wb‡K fw©Z Kiv n‡qwQj wK?</span> (Was s/he admitted in the hospital before s/he died?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList15" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No(skip to 11)</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know(skip to 11)</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>
                div class="row well" style="border: thin solid #666666;">
                    <div style="font-weight: bold;">
                        <strong>
                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                10.2.1nvmcvZv‡j fwZ©i ZvwjKv wjLyb: </p>
                            <p>
                                (Write his/her hospital admission (starting from recent))
                            </p>
                        </strong>
                        <div class="row well" style="overflow: scroll;">
                            <table class="table table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                ¯^v¯’¨ †mev cÖwZôv‡bi bvg
                                            </p>
                                            <p>
                                                (Name of health institute)</p>
                                        </th>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                               nvmcvZv‡j f©wZ nIqvi ZvwiL:
                                            </p>
                                            <p>
                                                (Date of admission)</p>
                                        </th>
                                        <th>
                                            <p class="text-justify" style="font-family: SutonnyMJ; font-size: medium">
                                                nvmcvZv‡j fwZ©i KviY mg~n
                                            </p>
                                            <p>
                                                (Reasons for admission)</p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="Span6" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span7" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span8" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="Span10" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span11" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span12" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span id="Span14" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span15" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span16" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <span id="Span9" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span13" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                        <td>
                                            <span id="Span17" runat="server" class='RadioButtonListNormalFont'></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
              <div class="row well" style="border: thin solid #666666;">
                 <div class="col-sm-6" style="font-weight: bold;">
                    <span class="text-justify" style="font-family: SutonnyMJ; font-size: medium">10.2.2 wkïwU nvmcvZv‡j f©wZ Ae¯’vq hLb Lye Amy¯’ wQj ZLb wK nvmcvZvj †_‡K AevnwZ †`qv n‡qwQj?</span> (Was she discharged from the hospital when she was still very ill?)
                 </div>
                  <div class="col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList16" runat="server" Style="font-style: normal;" RepeatDirection="Horizontal">
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>1=Yes</span> " Value="1"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>0=No</span> "
                            Value="0"></asp:ListItem>
                        <asp:ListItem Text="<span class='RadioButtonListNormalFont'>999=Don't Know</span> "
                            Value="999"></asp:ListItem>
                    </asp:RadioButtonList>
                  </div>
                </div>








            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
