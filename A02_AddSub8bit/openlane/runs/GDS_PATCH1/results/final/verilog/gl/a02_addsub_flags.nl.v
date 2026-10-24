// This is the unpowered netlist.
module a02_addsub_flags (c,
    n,
    op,
    v,
    z,
    a,
    b,
    y);
 output c;
 output n;
 input op;
 output v;
 output z;
 input [7:0] a;
 input [7:0] b;
 output [7:0] y;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__fill_2 FILLER_0_0_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_24 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_76 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_12 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_40 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_24 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_28 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_68 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_12 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_40 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_31 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_7 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__buf_2 _047_ (.A(net17),
    .X(_000_));
 sky130_fd_sc_hd__xor2_1 _048_ (.A(net13),
    .B(_000_),
    .X(_001_));
 sky130_fd_sc_hd__and2_1 _049_ (.A(net5),
    .B(_001_),
    .X(_002_));
 sky130_fd_sc_hd__nor2_1 _050_ (.A(net5),
    .B(_001_),
    .Y(_003_));
 sky130_fd_sc_hd__or2_1 _051_ (.A(_002_),
    .B(_003_),
    .X(_004_));
 sky130_fd_sc_hd__xor2_1 _052_ (.A(net17),
    .B(net11),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _053_ (.A(net3),
    .B(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__or2_1 _054_ (.A(net3),
    .B(_005_),
    .X(_007_));
 sky130_fd_sc_hd__nand2_1 _055_ (.A(_006_),
    .B(_007_),
    .Y(_008_));
 sky130_fd_sc_hd__mux2_1 _056_ (.A0(_000_),
    .A1(net1),
    .S(net9),
    .X(_009_));
 sky130_fd_sc_hd__or2_1 _057_ (.A(net17),
    .B(net10),
    .X(_010_));
 sky130_fd_sc_hd__nand2_1 _058_ (.A(_000_),
    .B(net10),
    .Y(_011_));
 sky130_fd_sc_hd__a21o_1 _059_ (.A1(_010_),
    .A2(_011_),
    .B1(net2),
    .X(_012_));
 sky130_fd_sc_hd__and3_1 _060_ (.A(net2),
    .B(_010_),
    .C(_011_),
    .X(_013_));
 sky130_fd_sc_hd__a21oi_2 _061_ (.A1(_009_),
    .A2(_012_),
    .B1(_013_),
    .Y(_014_));
 sky130_fd_sc_hd__or2_1 _062_ (.A(net17),
    .B(net12),
    .X(_015_));
 sky130_fd_sc_hd__nand2_1 _063_ (.A(_000_),
    .B(net12),
    .Y(_016_));
 sky130_fd_sc_hd__a21oi_1 _064_ (.A1(_015_),
    .A2(_016_),
    .B1(net4),
    .Y(_017_));
 sky130_fd_sc_hd__and3_1 _065_ (.A(net4),
    .B(_015_),
    .C(_016_),
    .X(_018_));
 sky130_fd_sc_hd__or2_1 _066_ (.A(_017_),
    .B(_018_),
    .X(_019_));
 sky130_fd_sc_hd__a21o_1 _067_ (.A1(_015_),
    .A2(_016_),
    .B1(net4),
    .X(_020_));
 sky130_fd_sc_hd__a31oi_1 _068_ (.A1(net3),
    .A2(_020_),
    .A3(_005_),
    .B1(_018_),
    .Y(_021_));
 sky130_fd_sc_hd__o31a_1 _069_ (.A1(_008_),
    .A2(_014_),
    .A3(_019_),
    .B1(_021_),
    .X(_022_));
 sky130_fd_sc_hd__xor2_1 _070_ (.A(_004_),
    .B(_022_),
    .X(net25));
 sky130_fd_sc_hd__or2_1 _071_ (.A(_000_),
    .B(net14),
    .X(_023_));
 sky130_fd_sc_hd__nand2_1 _072_ (.A(_000_),
    .B(net14),
    .Y(_024_));
 sky130_fd_sc_hd__nand3_1 _073_ (.A(net6),
    .B(_023_),
    .C(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__a21o_1 _074_ (.A1(_023_),
    .A2(_024_),
    .B1(net6),
    .X(_026_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(_025_),
    .B(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__o21bai_1 _076_ (.A1(_004_),
    .A2(_022_),
    .B1_N(_002_),
    .Y(_028_));
 sky130_fd_sc_hd__xnor2_1 _077_ (.A(_027_),
    .B(_028_),
    .Y(net26));
 sky130_fd_sc_hd__or2_1 _078_ (.A(_000_),
    .B(net15),
    .X(_029_));
 sky130_fd_sc_hd__nand2_1 _079_ (.A(_000_),
    .B(net15),
    .Y(_030_));
 sky130_fd_sc_hd__a21oi_1 _080_ (.A1(_029_),
    .A2(_030_),
    .B1(net7),
    .Y(_031_));
 sky130_fd_sc_hd__and3_1 _081_ (.A(net7),
    .B(_029_),
    .C(_030_),
    .X(_032_));
 sky130_fd_sc_hd__or2_1 _082_ (.A(_031_),
    .B(_032_),
    .X(_033_));
 sky130_fd_sc_hd__a21boi_1 _083_ (.A1(_002_),
    .A2(_026_),
    .B1_N(_025_),
    .Y(_034_));
 sky130_fd_sc_hd__o31a_1 _084_ (.A1(_004_),
    .A2(_022_),
    .A3(_027_),
    .B1(_034_),
    .X(_035_));
 sky130_fd_sc_hd__xor2_1 _085_ (.A(_033_),
    .B(_035_),
    .X(net27));
 sky130_fd_sc_hd__or2_1 _086_ (.A(_000_),
    .B(net16),
    .X(_036_));
 sky130_fd_sc_hd__nand2_1 _087_ (.A(_000_),
    .B(net16),
    .Y(_037_));
 sky130_fd_sc_hd__and3_1 _088_ (.A(net8),
    .B(_036_),
    .C(_037_),
    .X(_038_));
 sky130_fd_sc_hd__a21oi_1 _089_ (.A1(_036_),
    .A2(_037_),
    .B1(net8),
    .Y(_039_));
 sky130_fd_sc_hd__or2_1 _090_ (.A(_038_),
    .B(_039_),
    .X(_040_));
 sky130_fd_sc_hd__o21bai_2 _091_ (.A1(_031_),
    .A2(_035_),
    .B1_N(_032_),
    .Y(_041_));
 sky130_fd_sc_hd__xnor2_1 _092_ (.A(_040_),
    .B(_041_),
    .Y(net19));
 sky130_fd_sc_hd__xor2_1 _093_ (.A(net1),
    .B(net9),
    .X(net21));
 sky130_fd_sc_hd__or2b_1 _094_ (.A(_013_),
    .B_N(_012_),
    .X(_042_));
 sky130_fd_sc_hd__xnor2_1 _095_ (.A(_009_),
    .B(_042_),
    .Y(net22));
 sky130_fd_sc_hd__xor2_1 _096_ (.A(_008_),
    .B(_014_),
    .X(net23));
 sky130_fd_sc_hd__o21ai_1 _097_ (.A1(_008_),
    .A2(_014_),
    .B1(_006_),
    .Y(_043_));
 sky130_fd_sc_hd__xnor2_1 _098_ (.A(_019_),
    .B(_043_),
    .Y(net24));
 sky130_fd_sc_hd__or4_1 _099_ (.A(net21),
    .B(net22),
    .C(net23),
    .D(net24),
    .X(_044_));
 sky130_fd_sc_hd__or4_1 _100_ (.A(net25),
    .B(net26),
    .C(net27),
    .D(_044_),
    .X(_045_));
 sky130_fd_sc_hd__nor2_1 _101_ (.A(net19),
    .B(_045_),
    .Y(net29));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(_038_),
    .A1(_039_),
    .S(_041_),
    .X(_046_));
 sky130_fd_sc_hd__clkbuf_1 _103_ (.A(_046_),
    .X(net20));
 sky130_fd_sc_hd__o21ba_1 _104_ (.A1(_038_),
    .A2(_041_),
    .B1_N(_039_),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 _105_ (.A(net19),
    .X(net28));
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(b[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(b[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(b[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(b[4]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(b[5]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(b[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(b[7]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(op),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(a[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(a[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(b[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(c));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(n));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(v));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(y[0]));
 sky130_fd_sc_hd__clkbuf_4 output22 (.A(net22),
    .X(y[1]));
 sky130_fd_sc_hd__clkbuf_4 output23 (.A(net23),
    .X(y[2]));
 sky130_fd_sc_hd__clkbuf_4 output24 (.A(net24),
    .X(y[3]));
 sky130_fd_sc_hd__clkbuf_4 output25 (.A(net25),
    .X(y[4]));
 sky130_fd_sc_hd__clkbuf_4 output26 (.A(net26),
    .X(y[5]));
 sky130_fd_sc_hd__clkbuf_4 output27 (.A(net27),
    .X(y[6]));
 sky130_fd_sc_hd__clkbuf_4 output28 (.A(net28),
    .X(y[7]));
 sky130_fd_sc_hd__clkbuf_4 output29 (.A(net29),
    .X(z));
endmodule

