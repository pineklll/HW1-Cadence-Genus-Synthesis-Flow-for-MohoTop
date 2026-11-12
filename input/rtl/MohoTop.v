// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : MohoTop
// Git hash  : ea4c17b1fdd8fdf3b5cb1d0b788b703a981e0e77

`timescale 1ns/1ps

module MohoTop (
  input  wire          io_pins_clk,
  input  wire          io_pins_rst,
  input  wire [31:0]   io_pins_gpio_0_read,
  output reg  [31:0]   io_pins_gpio_0_write,
  output reg  [31:0]   io_pins_gpio_0_writeEnable,
  output wire          io_pins_uart_tx,
  input  wire          io_pins_uart_rx,
  output wire          io_pins_spi_sel,
  output wire          io_pins_spi_sclk,
  output wire          io_pins_spi_mosi,
  input  wire          io_pins_spi_miso,
  input  wire          io_pins_burn,
  output wire          io_pins_flash_sel,
  output wire          io_pins_flash_sclk,
  output wire          io_pins_flash_mosi,
  input  wire          io_pins_flash_miso,
  input  wire          io_pins_fprog_sel,
  input  wire          io_pins_fprog_sclk,
  input  wire          io_pins_fprog_mosi,
  output wire          io_pins_fprog_miso
);

  reg        [31:0]   topArea_soc_io_gpio_0_read;
  wire       [31:0]   topArea_soc_io_gpio_0_write;
  wire       [31:0]   topArea_soc_io_gpio_0_writeEnable;
  wire                topArea_soc_io_uart_tx;
  wire                topArea_soc_io_spi_sel;
  wire                topArea_soc_io_spi_sclk;
  wire                topArea_soc_io_spi_mosi;
  wire                topArea_soc_io_flashspi_sel;
  wire                topArea_soc_io_flashspi_sclk;
  wire                topArea_soc_io_flashspi_mosi;
  wire                clkTop;
  wire                rstTop;
  reg                 rstTop_regNext;
  reg                 rstSoc;
  reg                 topArea_fburnReg;
  reg                 topArea_fprogReg_sel;
  reg                 topArea_fprogReg_sclk;
  reg                 topArea_fprogReg_mosi;
  reg                 topArea_fprogReg_miso;

  MohoSoc topArea_soc (
    .io_gpio_0_read        (topArea_soc_io_gpio_0_read[31:0]       ), //i
    .io_gpio_0_write       (topArea_soc_io_gpio_0_write[31:0]      ), //o
    .io_gpio_0_writeEnable (topArea_soc_io_gpio_0_writeEnable[31:0]), //o
    .io_uart_tx            (topArea_soc_io_uart_tx                 ), //o
    .io_uart_rx            (io_pins_uart_rx                        ), //i
    .io_spi_sel            (topArea_soc_io_spi_sel                 ), //o
    .io_spi_sclk           (topArea_soc_io_spi_sclk                ), //o
    .io_spi_mosi           (topArea_soc_io_spi_mosi                ), //o
    .io_spi_miso           (io_pins_spi_miso                       ), //i
    .io_flashspi_sel       (topArea_soc_io_flashspi_sel            ), //o
    .io_flashspi_sclk      (topArea_soc_io_flashspi_sclk           ), //o
    .io_flashspi_mosi      (topArea_soc_io_flashspi_mosi           ), //o
    .io_flashspi_miso      (io_pins_flash_miso                     ), //i
    .clkCore               (clkTop                                 ), //i
    .rstSoc                (rstSoc                                 )  //i
  );
  assign clkTop = io_pins_clk;
  assign rstTop = io_pins_rst;
  always @(*) begin
    topArea_soc_io_gpio_0_read[0] = io_pins_gpio_0_read[0];
    topArea_soc_io_gpio_0_read[1] = io_pins_gpio_0_read[1];
    topArea_soc_io_gpio_0_read[2] = io_pins_gpio_0_read[2];
    topArea_soc_io_gpio_0_read[3] = io_pins_gpio_0_read[3];
    topArea_soc_io_gpio_0_read[4] = io_pins_gpio_0_read[4];
    topArea_soc_io_gpio_0_read[5] = io_pins_gpio_0_read[5];
    topArea_soc_io_gpio_0_read[6] = io_pins_gpio_0_read[6];
    topArea_soc_io_gpio_0_read[7] = io_pins_gpio_0_read[7];
    topArea_soc_io_gpio_0_read[8] = io_pins_gpio_0_read[8];
    topArea_soc_io_gpio_0_read[9] = io_pins_gpio_0_read[9];
    topArea_soc_io_gpio_0_read[10] = io_pins_gpio_0_read[10];
    topArea_soc_io_gpio_0_read[11] = io_pins_gpio_0_read[11];
    topArea_soc_io_gpio_0_read[12] = io_pins_gpio_0_read[12];
    topArea_soc_io_gpio_0_read[13] = io_pins_gpio_0_read[13];
    topArea_soc_io_gpio_0_read[14] = io_pins_gpio_0_read[14];
    topArea_soc_io_gpio_0_read[15] = io_pins_gpio_0_read[15];
    topArea_soc_io_gpio_0_read[16] = io_pins_gpio_0_read[16];
    topArea_soc_io_gpio_0_read[17] = io_pins_gpio_0_read[17];
    topArea_soc_io_gpio_0_read[18] = io_pins_gpio_0_read[18];
    topArea_soc_io_gpio_0_read[19] = io_pins_gpio_0_read[19];
    topArea_soc_io_gpio_0_read[20] = io_pins_gpio_0_read[20];
    topArea_soc_io_gpio_0_read[21] = io_pins_gpio_0_read[21];
    topArea_soc_io_gpio_0_read[22] = io_pins_gpio_0_read[22];
    topArea_soc_io_gpio_0_read[23] = io_pins_gpio_0_read[23];
    topArea_soc_io_gpio_0_read[24] = io_pins_gpio_0_read[24];
    topArea_soc_io_gpio_0_read[25] = io_pins_gpio_0_read[25];
    topArea_soc_io_gpio_0_read[26] = io_pins_gpio_0_read[26];
    topArea_soc_io_gpio_0_read[27] = io_pins_gpio_0_read[27];
    topArea_soc_io_gpio_0_read[28] = io_pins_gpio_0_read[28];
    topArea_soc_io_gpio_0_read[29] = io_pins_gpio_0_read[29];
    topArea_soc_io_gpio_0_read[30] = io_pins_gpio_0_read[30];
    topArea_soc_io_gpio_0_read[31] = io_pins_gpio_0_read[31];
  end

  always @(*) begin
    io_pins_gpio_0_write[0] = topArea_soc_io_gpio_0_write[0];
    io_pins_gpio_0_write[1] = topArea_soc_io_gpio_0_write[1];
    io_pins_gpio_0_write[2] = topArea_soc_io_gpio_0_write[2];
    io_pins_gpio_0_write[3] = topArea_soc_io_gpio_0_write[3];
    io_pins_gpio_0_write[4] = topArea_soc_io_gpio_0_write[4];
    io_pins_gpio_0_write[5] = topArea_soc_io_gpio_0_write[5];
    io_pins_gpio_0_write[6] = topArea_soc_io_gpio_0_write[6];
    io_pins_gpio_0_write[7] = topArea_soc_io_gpio_0_write[7];
    io_pins_gpio_0_write[8] = topArea_soc_io_gpio_0_write[8];
    io_pins_gpio_0_write[9] = topArea_soc_io_gpio_0_write[9];
    io_pins_gpio_0_write[10] = topArea_soc_io_gpio_0_write[10];
    io_pins_gpio_0_write[11] = topArea_soc_io_gpio_0_write[11];
    io_pins_gpio_0_write[12] = topArea_soc_io_gpio_0_write[12];
    io_pins_gpio_0_write[13] = topArea_soc_io_gpio_0_write[13];
    io_pins_gpio_0_write[14] = topArea_soc_io_gpio_0_write[14];
    io_pins_gpio_0_write[15] = topArea_soc_io_gpio_0_write[15];
    io_pins_gpio_0_write[16] = topArea_soc_io_gpio_0_write[16];
    io_pins_gpio_0_write[17] = topArea_soc_io_gpio_0_write[17];
    io_pins_gpio_0_write[18] = topArea_soc_io_gpio_0_write[18];
    io_pins_gpio_0_write[19] = topArea_soc_io_gpio_0_write[19];
    io_pins_gpio_0_write[20] = topArea_soc_io_gpio_0_write[20];
    io_pins_gpio_0_write[21] = topArea_soc_io_gpio_0_write[21];
    io_pins_gpio_0_write[22] = topArea_soc_io_gpio_0_write[22];
    io_pins_gpio_0_write[23] = topArea_soc_io_gpio_0_write[23];
    io_pins_gpio_0_write[24] = topArea_soc_io_gpio_0_write[24];
    io_pins_gpio_0_write[25] = topArea_soc_io_gpio_0_write[25];
    io_pins_gpio_0_write[26] = topArea_soc_io_gpio_0_write[26];
    io_pins_gpio_0_write[27] = topArea_soc_io_gpio_0_write[27];
    io_pins_gpio_0_write[28] = topArea_soc_io_gpio_0_write[28];
    io_pins_gpio_0_write[29] = topArea_soc_io_gpio_0_write[29];
    io_pins_gpio_0_write[30] = topArea_soc_io_gpio_0_write[30];
    io_pins_gpio_0_write[31] = topArea_soc_io_gpio_0_write[31];
  end

  always @(*) begin
    io_pins_gpio_0_writeEnable[0] = topArea_soc_io_gpio_0_writeEnable[0];
    io_pins_gpio_0_writeEnable[1] = topArea_soc_io_gpio_0_writeEnable[1];
    io_pins_gpio_0_writeEnable[2] = topArea_soc_io_gpio_0_writeEnable[2];
    io_pins_gpio_0_writeEnable[3] = topArea_soc_io_gpio_0_writeEnable[3];
    io_pins_gpio_0_writeEnable[4] = topArea_soc_io_gpio_0_writeEnable[4];
    io_pins_gpio_0_writeEnable[5] = topArea_soc_io_gpio_0_writeEnable[5];
    io_pins_gpio_0_writeEnable[6] = topArea_soc_io_gpio_0_writeEnable[6];
    io_pins_gpio_0_writeEnable[7] = topArea_soc_io_gpio_0_writeEnable[7];
    io_pins_gpio_0_writeEnable[8] = topArea_soc_io_gpio_0_writeEnable[8];
    io_pins_gpio_0_writeEnable[9] = topArea_soc_io_gpio_0_writeEnable[9];
    io_pins_gpio_0_writeEnable[10] = topArea_soc_io_gpio_0_writeEnable[10];
    io_pins_gpio_0_writeEnable[11] = topArea_soc_io_gpio_0_writeEnable[11];
    io_pins_gpio_0_writeEnable[12] = topArea_soc_io_gpio_0_writeEnable[12];
    io_pins_gpio_0_writeEnable[13] = topArea_soc_io_gpio_0_writeEnable[13];
    io_pins_gpio_0_writeEnable[14] = topArea_soc_io_gpio_0_writeEnable[14];
    io_pins_gpio_0_writeEnable[15] = topArea_soc_io_gpio_0_writeEnable[15];
    io_pins_gpio_0_writeEnable[16] = topArea_soc_io_gpio_0_writeEnable[16];
    io_pins_gpio_0_writeEnable[17] = topArea_soc_io_gpio_0_writeEnable[17];
    io_pins_gpio_0_writeEnable[18] = topArea_soc_io_gpio_0_writeEnable[18];
    io_pins_gpio_0_writeEnable[19] = topArea_soc_io_gpio_0_writeEnable[19];
    io_pins_gpio_0_writeEnable[20] = topArea_soc_io_gpio_0_writeEnable[20];
    io_pins_gpio_0_writeEnable[21] = topArea_soc_io_gpio_0_writeEnable[21];
    io_pins_gpio_0_writeEnable[22] = topArea_soc_io_gpio_0_writeEnable[22];
    io_pins_gpio_0_writeEnable[23] = topArea_soc_io_gpio_0_writeEnable[23];
    io_pins_gpio_0_writeEnable[24] = topArea_soc_io_gpio_0_writeEnable[24];
    io_pins_gpio_0_writeEnable[25] = topArea_soc_io_gpio_0_writeEnable[25];
    io_pins_gpio_0_writeEnable[26] = topArea_soc_io_gpio_0_writeEnable[26];
    io_pins_gpio_0_writeEnable[27] = topArea_soc_io_gpio_0_writeEnable[27];
    io_pins_gpio_0_writeEnable[28] = topArea_soc_io_gpio_0_writeEnable[28];
    io_pins_gpio_0_writeEnable[29] = topArea_soc_io_gpio_0_writeEnable[29];
    io_pins_gpio_0_writeEnable[30] = topArea_soc_io_gpio_0_writeEnable[30];
    io_pins_gpio_0_writeEnable[31] = topArea_soc_io_gpio_0_writeEnable[31];
  end

  assign io_pins_uart_tx = topArea_soc_io_uart_tx;
  assign io_pins_spi_sel = topArea_soc_io_spi_sel;
  assign io_pins_spi_sclk = topArea_soc_io_spi_sclk;
  assign io_pins_spi_mosi = topArea_soc_io_spi_mosi;
  assign io_pins_fprog_miso = topArea_fprogReg_miso;
  assign io_pins_flash_sel = (topArea_fburnReg ? topArea_soc_io_flashspi_sel : topArea_fprogReg_sel);
  assign io_pins_flash_sclk = (topArea_fburnReg ? topArea_soc_io_flashspi_sclk : topArea_fprogReg_sclk);
  assign io_pins_flash_mosi = (topArea_fburnReg ? topArea_soc_io_flashspi_mosi : topArea_fprogReg_mosi);
  always @(posedge clkTop) begin
    rstTop_regNext <= rstTop;
    rstSoc <= rstTop_regNext;
  end

  always @(posedge clkTop or posedge rstSoc) begin
    if(rstSoc) begin
      topArea_fburnReg <= 1'b1;
      topArea_fprogReg_sel <= 1'b1;
      topArea_fprogReg_sclk <= 1'b1;
      topArea_fprogReg_mosi <= 1'b0;
      topArea_fprogReg_miso <= 1'b0;
    end else begin
      topArea_fburnReg <= io_pins_burn;
      topArea_fprogReg_sel <= io_pins_fprog_sel;
      topArea_fprogReg_sclk <= io_pins_fprog_sclk;
      topArea_fprogReg_mosi <= io_pins_fprog_mosi;
      topArea_fprogReg_miso <= io_pins_flash_miso;
    end
  end


endmodule

module MohoSoc (
  input  wire [31:0]   io_gpio_0_read,
  output wire [31:0]   io_gpio_0_write,
  output wire [31:0]   io_gpio_0_writeEnable,
  output wire          io_uart_tx,
  input  wire          io_uart_rx,
  output wire          io_spi_sel,
  output wire          io_spi_sclk,
  output wire          io_spi_mosi,
  input  wire          io_spi_miso,
  output wire          io_flashspi_sel,
  output wire          io_flashspi_sclk,
  output wire          io_flashspi_mosi,
  input  wire          io_flashspi_miso,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  wire                xload_u_io_done;
  wire       [31:0]   xload_u_io_boot_addr;
  wire       [31:0]   xload_u_io_boot_dataWr;
  wire                xload_u_io_boot_enableWr;
  wire                xload_u_io_flashspi_sel;
  wire                xload_u_io_flashspi_sclk;
  wire                xload_u_io_flashspi_mosi;
  wire       [31:0]   coreArea_core_io_imem_addr;
  wire                coreArea_core_io_imem_select;
  wire       [31:0]   coreArea_core_io_dmem_addr;
  wire       [31:0]   coreArea_core_io_dmem_dataWr;
  wire                coreArea_core_io_dmem_enableWr;
  wire       [1:0]    coreArea_core_io_dmem_length;
  wire                coreArea_core_io_dmem_select;
  wire       [31:0]   dbus_io_pdCore_dataRd;
  wire       [31:0]   dbus_io_pdRom_addr;
  wire       [31:0]   dbus_io_pdRom_dataWr;
  wire                dbus_io_pdRom_enableWr;
  wire       [1:0]    dbus_io_pdRom_length;
  wire                dbus_io_pdRom_select;
  wire       [31:0]   dbus_io_pdRam_addr;
  wire       [31:0]   dbus_io_pdRam_dataWr;
  wire                dbus_io_pdRam_enableWr;
  wire       [1:0]    dbus_io_pdRam_length;
  wire                dbus_io_pdRam_select;
  wire       [31:0]   dbus_io_pdGpio_addr;
  wire       [31:0]   dbus_io_pdGpio_dataWr;
  wire                dbus_io_pdGpio_enableWr;
  wire       [1:0]    dbus_io_pdGpio_length;
  wire                dbus_io_pdGpio_select;
  wire       [31:0]   dbus_io_pdUart_addr;
  wire       [31:0]   dbus_io_pdUart_dataWr;
  wire                dbus_io_pdUart_enableWr;
  wire       [1:0]    dbus_io_pdUart_length;
  wire                dbus_io_pdUart_select;
  wire       [31:0]   dbus_io_pdSpi_addr;
  wire       [31:0]   dbus_io_pdSpi_dataWr;
  wire                dbus_io_pdSpi_enableWr;
  wire       [1:0]    dbus_io_pdSpi_length;
  wire                dbus_io_pdSpi_select;
  wire       [31:0]   dbus_io_pdTicker_addr;
  wire       [31:0]   dbus_io_pdTicker_dataWr;
  wire                dbus_io_pdTicker_enableWr;
  wire       [1:0]    dbus_io_pdTicker_length;
  wire                dbus_io_pdTicker_select;
  wire       [31:0]   dbus_io_pdSreg_addr;
  wire       [31:0]   dbus_io_pdSreg_dataWr;
  wire                dbus_io_pdSreg_enableWr;
  wire       [1:0]    dbus_io_pdSreg_length;
  wire                dbus_io_pdSreg_select;
  wire       [31:0]   ibus_io_piCore_dataRd;
  wire                ibus_io_piCore_failed;
  wire       [31:0]   ibus_io_piRom_addr;
  wire                ibus_io_piRom_select;
  wire       [31:0]   rom_m_io_dmem_dataRd;
  wire       [31:0]   rom_m_io_imem_dataRd;
  wire                rom_m_io_imem_failed;
  wire       [31:0]   ram_u_io_dmem_dataRd;
  wire       [31:0]   mgpio_u_io_dmem_dataRd;
  wire       [31:0]   mgpio_u_io_gpio_0_write;
  wire       [31:0]   mgpio_u_io_gpio_0_writeEnable;
  wire       [31:0]   muart_u_io_dmem_dataRd;
  wire                muart_u_io_uart_tx;
  wire       [31:0]   mspi_u_io_dmem_dataRd;
  wire                mspi_u_io_spi_sel;
  wire                mspi_u_io_spi_sclk;
  wire                mspi_u_io_spi_mosi;
  wire       [31:0]   mticker_u_io_dmem_dataRd;
  wire       [31:0]   msreg_u_io_dmem_dataRd;
  wire                rstCore;

  LoadFlash xload_u (
    .io_done          (xload_u_io_done             ), //o
    .io_boot_addr     (xload_u_io_boot_addr[31:0]  ), //o
    .io_boot_dataWr   (xload_u_io_boot_dataWr[31:0]), //o
    .io_boot_enableWr (xload_u_io_boot_enableWr    ), //o
    .io_flashspi_sel  (xload_u_io_flashspi_sel     ), //o
    .io_flashspi_sclk (xload_u_io_flashspi_sclk    ), //o
    .io_flashspi_mosi (xload_u_io_flashspi_mosi    ), //o
    .io_flashspi_miso (io_flashspi_miso            ), //i
    .clkCore          (clkCore                     ), //i
    .rstSoc           (rstSoc                      )  //i
  );
  MohoCore coreArea_core (
    .io_imem_addr     (coreArea_core_io_imem_addr[31:0]  ), //o
    .io_imem_dataRd   (ibus_io_piCore_dataRd[31:0]       ), //i
    .io_imem_select   (coreArea_core_io_imem_select      ), //o
    .io_imem_failed   (ibus_io_piCore_failed             ), //i
    .io_dmem_addr     (coreArea_core_io_dmem_addr[31:0]  ), //o
    .io_dmem_dataRd   (dbus_io_pdCore_dataRd[31:0]       ), //i
    .io_dmem_dataWr   (coreArea_core_io_dmem_dataWr[31:0]), //o
    .io_dmem_enableWr (coreArea_core_io_dmem_enableWr    ), //o
    .io_dmem_length   (coreArea_core_io_dmem_length[1:0] ), //o
    .io_dmem_select   (coreArea_core_io_dmem_select      ), //o
    .rstCore          (rstCore                           ), //i
    .clkCore          (clkCore                           )  //i
  );
  BusDmem dbus (
    .io_pdCore_addr       (coreArea_core_io_dmem_addr[31:0]  ), //i
    .io_pdCore_dataRd     (dbus_io_pdCore_dataRd[31:0]       ), //o
    .io_pdCore_dataWr     (coreArea_core_io_dmem_dataWr[31:0]), //i
    .io_pdCore_enableWr   (coreArea_core_io_dmem_enableWr    ), //i
    .io_pdCore_length     (coreArea_core_io_dmem_length[1:0] ), //i
    .io_pdCore_select     (coreArea_core_io_dmem_select      ), //i
    .io_pdRom_addr        (dbus_io_pdRom_addr[31:0]          ), //o
    .io_pdRom_dataRd      (rom_m_io_dmem_dataRd[31:0]        ), //i
    .io_pdRom_dataWr      (dbus_io_pdRom_dataWr[31:0]        ), //o
    .io_pdRom_enableWr    (dbus_io_pdRom_enableWr            ), //o
    .io_pdRom_length      (dbus_io_pdRom_length[1:0]         ), //o
    .io_pdRom_select      (dbus_io_pdRom_select              ), //o
    .io_pdRam_addr        (dbus_io_pdRam_addr[31:0]          ), //o
    .io_pdRam_dataRd      (ram_u_io_dmem_dataRd[31:0]        ), //i
    .io_pdRam_dataWr      (dbus_io_pdRam_dataWr[31:0]        ), //o
    .io_pdRam_enableWr    (dbus_io_pdRam_enableWr            ), //o
    .io_pdRam_length      (dbus_io_pdRam_length[1:0]         ), //o
    .io_pdRam_select      (dbus_io_pdRam_select              ), //o
    .io_pdGpio_addr       (dbus_io_pdGpio_addr[31:0]         ), //o
    .io_pdGpio_dataRd     (mgpio_u_io_dmem_dataRd[31:0]      ), //i
    .io_pdGpio_dataWr     (dbus_io_pdGpio_dataWr[31:0]       ), //o
    .io_pdGpio_enableWr   (dbus_io_pdGpio_enableWr           ), //o
    .io_pdGpio_length     (dbus_io_pdGpio_length[1:0]        ), //o
    .io_pdGpio_select     (dbus_io_pdGpio_select             ), //o
    .io_pdUart_addr       (dbus_io_pdUart_addr[31:0]         ), //o
    .io_pdUart_dataRd     (muart_u_io_dmem_dataRd[31:0]      ), //i
    .io_pdUart_dataWr     (dbus_io_pdUart_dataWr[31:0]       ), //o
    .io_pdUart_enableWr   (dbus_io_pdUart_enableWr           ), //o
    .io_pdUart_length     (dbus_io_pdUart_length[1:0]        ), //o
    .io_pdUart_select     (dbus_io_pdUart_select             ), //o
    .io_pdSpi_addr        (dbus_io_pdSpi_addr[31:0]          ), //o
    .io_pdSpi_dataRd      (mspi_u_io_dmem_dataRd[31:0]       ), //i
    .io_pdSpi_dataWr      (dbus_io_pdSpi_dataWr[31:0]        ), //o
    .io_pdSpi_enableWr    (dbus_io_pdSpi_enableWr            ), //o
    .io_pdSpi_length      (dbus_io_pdSpi_length[1:0]         ), //o
    .io_pdSpi_select      (dbus_io_pdSpi_select              ), //o
    .io_pdTicker_addr     (dbus_io_pdTicker_addr[31:0]       ), //o
    .io_pdTicker_dataRd   (mticker_u_io_dmem_dataRd[31:0]    ), //i
    .io_pdTicker_dataWr   (dbus_io_pdTicker_dataWr[31:0]     ), //o
    .io_pdTicker_enableWr (dbus_io_pdTicker_enableWr         ), //o
    .io_pdTicker_length   (dbus_io_pdTicker_length[1:0]      ), //o
    .io_pdTicker_select   (dbus_io_pdTicker_select           ), //o
    .io_pdSreg_addr       (dbus_io_pdSreg_addr[31:0]         ), //o
    .io_pdSreg_dataRd     (msreg_u_io_dmem_dataRd[31:0]      ), //i
    .io_pdSreg_dataWr     (dbus_io_pdSreg_dataWr[31:0]       ), //o
    .io_pdSreg_enableWr   (dbus_io_pdSreg_enableWr           ), //o
    .io_pdSreg_length     (dbus_io_pdSreg_length[1:0]        ), //o
    .io_pdSreg_select     (dbus_io_pdSreg_select             ), //o
    .clkCore              (clkCore                           ), //i
    .rstSoc               (rstSoc                            )  //i
  );
  BusImem ibus (
    .io_piCore_addr   (coreArea_core_io_imem_addr[31:0]), //i
    .io_piCore_dataRd (ibus_io_piCore_dataRd[31:0]     ), //o
    .io_piCore_select (coreArea_core_io_imem_select    ), //i
    .io_piCore_failed (ibus_io_piCore_failed           ), //o
    .io_piRom_addr    (ibus_io_piRom_addr[31:0]        ), //o
    .io_piRom_dataRd  (rom_m_io_imem_dataRd[31:0]      ), //i
    .io_piRom_select  (ibus_io_piRom_select            ), //o
    .io_piRom_failed  (rom_m_io_imem_failed            ), //i
    .clkCore          (clkCore                         ), //i
    .rstSoc           (rstSoc                          )  //i
  );
  Rom rom_m (
    .io_dmem_addr     (dbus_io_pdRom_addr[31:0]    ), //i
    .io_dmem_dataRd   (rom_m_io_dmem_dataRd[31:0]  ), //o
    .io_dmem_dataWr   (dbus_io_pdRom_dataWr[31:0]  ), //i
    .io_dmem_enableWr (dbus_io_pdRom_enableWr      ), //i
    .io_dmem_length   (dbus_io_pdRom_length[1:0]   ), //i
    .io_dmem_select   (dbus_io_pdRom_select        ), //i
    .io_imem_addr     (ibus_io_piRom_addr[31:0]    ), //i
    .io_imem_dataRd   (rom_m_io_imem_dataRd[31:0]  ), //o
    .io_imem_select   (ibus_io_piRom_select        ), //i
    .io_imem_failed   (rom_m_io_imem_failed        ), //o
    .io_boot_addr     (xload_u_io_boot_addr[31:0]  ), //i
    .io_boot_dataWr   (xload_u_io_boot_dataWr[31:0]), //i
    .io_boot_enableWr (xload_u_io_boot_enableWr    ), //i
    .clkCore          (clkCore                     ), //i
    .rstSoc           (rstSoc                      )  //i
  );
  Ram ram_u (
    .io_dmem_addr     (dbus_io_pdRam_addr[31:0]  ), //i
    .io_dmem_dataRd   (ram_u_io_dmem_dataRd[31:0]), //o
    .io_dmem_dataWr   (dbus_io_pdRam_dataWr[31:0]), //i
    .io_dmem_enableWr (dbus_io_pdRam_enableWr    ), //i
    .io_dmem_length   (dbus_io_pdRam_length[1:0] ), //i
    .io_dmem_select   (dbus_io_pdRam_select      ), //i
    .clkCore          (clkCore                   ), //i
    .rstSoc           (rstSoc                    )  //i
  );
  Gpio mgpio_u (
    .io_dmem_addr          (dbus_io_pdGpio_addr[31:0]          ), //i
    .io_dmem_dataRd        (mgpio_u_io_dmem_dataRd[31:0]       ), //o
    .io_dmem_dataWr        (dbus_io_pdGpio_dataWr[31:0]        ), //i
    .io_dmem_enableWr      (dbus_io_pdGpio_enableWr            ), //i
    .io_dmem_length        (dbus_io_pdGpio_length[1:0]         ), //i
    .io_dmem_select        (dbus_io_pdGpio_select              ), //i
    .io_gpio_0_read        (io_gpio_0_read[31:0]               ), //i
    .io_gpio_0_write       (mgpio_u_io_gpio_0_write[31:0]      ), //o
    .io_gpio_0_writeEnable (mgpio_u_io_gpio_0_writeEnable[31:0]), //o
    .clkCore               (clkCore                            ), //i
    .rstSoc                (rstSoc                             )  //i
  );
  Uart muart_u (
    .io_dmem_addr     (dbus_io_pdUart_addr[31:0]   ), //i
    .io_dmem_dataRd   (muart_u_io_dmem_dataRd[31:0]), //o
    .io_dmem_dataWr   (dbus_io_pdUart_dataWr[31:0] ), //i
    .io_dmem_enableWr (dbus_io_pdUart_enableWr     ), //i
    .io_dmem_length   (dbus_io_pdUart_length[1:0]  ), //i
    .io_dmem_select   (dbus_io_pdUart_select       ), //i
    .io_uart_tx       (muart_u_io_uart_tx          ), //o
    .io_uart_rx       (io_uart_rx                  ), //i
    .clkCore          (clkCore                     ), //i
    .rstSoc           (rstSoc                      )  //i
  );
  Spi mspi_u (
    .io_dmem_addr     (dbus_io_pdSpi_addr[31:0]   ), //i
    .io_dmem_dataRd   (mspi_u_io_dmem_dataRd[31:0]), //o
    .io_dmem_dataWr   (dbus_io_pdSpi_dataWr[31:0] ), //i
    .io_dmem_enableWr (dbus_io_pdSpi_enableWr     ), //i
    .io_dmem_length   (dbus_io_pdSpi_length[1:0]  ), //i
    .io_dmem_select   (dbus_io_pdSpi_select       ), //i
    .io_spi_sel       (mspi_u_io_spi_sel          ), //o
    .io_spi_sclk      (mspi_u_io_spi_sclk         ), //o
    .io_spi_mosi      (mspi_u_io_spi_mosi         ), //o
    .io_spi_miso      (io_spi_miso                ), //i
    .clkCore          (clkCore                    ), //i
    .rstSoc           (rstSoc                     )  //i
  );
  Ticker mticker_u (
    .io_dmem_addr     (dbus_io_pdTicker_addr[31:0]   ), //i
    .io_dmem_dataRd   (mticker_u_io_dmem_dataRd[31:0]), //o
    .io_dmem_dataWr   (dbus_io_pdTicker_dataWr[31:0] ), //i
    .io_dmem_enableWr (dbus_io_pdTicker_enableWr     ), //i
    .io_dmem_length   (dbus_io_pdTicker_length[1:0]  ), //i
    .io_dmem_select   (dbus_io_pdTicker_select       ), //i
    .clkCore          (clkCore                       ), //i
    .rstSoc           (rstSoc                        )  //i
  );
  SimulationReg msreg_u (
    .io_dmem_addr     (dbus_io_pdSreg_addr[31:0]   ), //i
    .io_dmem_dataRd   (msreg_u_io_dmem_dataRd[31:0]), //o
    .io_dmem_dataWr   (dbus_io_pdSreg_dataWr[31:0] ), //i
    .io_dmem_enableWr (dbus_io_pdSreg_enableWr     ), //i
    .io_dmem_length   (dbus_io_pdSreg_length[1:0]  ), //i
    .io_dmem_select   (dbus_io_pdSreg_select       ), //i
    .clkCore          (clkCore                     ), //i
    .rstSoc           (rstSoc                      )  //i
  );
  assign rstCore = (rstSoc || (! xload_u_io_done));
  assign io_flashspi_sel = xload_u_io_flashspi_sel;
  assign io_flashspi_sclk = xload_u_io_flashspi_sclk;
  assign io_flashspi_mosi = xload_u_io_flashspi_mosi;
  assign io_gpio_0_write = mgpio_u_io_gpio_0_write;
  assign io_gpio_0_writeEnable = mgpio_u_io_gpio_0_writeEnable;
  assign io_uart_tx = muart_u_io_uart_tx;
  assign io_spi_sel = mspi_u_io_spi_sel;
  assign io_spi_sclk = mspi_u_io_spi_sclk;
  assign io_spi_mosi = mspi_u_io_spi_mosi;

endmodule

module SimulationReg (
  input  wire [31:0]   io_dmem_addr,
  output wire [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  wire       [1:0]    core_u_io_mcmd_addr;
  wire       [31:0]   core_u_io_mcmd_dataRd;
  wire       [29:0]   _zz_io_mcmd_addr;
  wire       [31:0]   _zz_io_mcmd_addr_1;
  wire       [31:0]   _zz_switch_PortDmem_l64;
  wire       [15:0]   _zz__zz_io_dmem_dataRd;
  wire       [15:0]   _zz__zz_io_dmem_dataRd_1;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_2;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_3;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_4;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_5;
  wire       [1:0]    switch_PortDmem_l64;
  reg        [3:0]    _zz_io_mcmd_mask;
  wire                when_PortDmem_l62;
  wire                when_PortDmem_l68;
  wire                when_PortDmem_l75;
  reg        [31:0]   _zz_io_mcmd_dataWr;
  reg        [3:0]    core_u_io_mcmd_mask_regNext;
  reg        [31:0]   _zz_io_dmem_dataRd;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz_io_mcmd_addr = (_zz_io_mcmd_addr_1 >>> 2'd2);
  assign _zz_io_mcmd_addr_1 = (io_dmem_addr - 32'h60000000);
  assign _zz_switch_PortDmem_l64 = (io_dmem_addr - 32'h60000000);
  assign _zz__zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[15 : 0];
  assign _zz__zz_io_dmem_dataRd_1 = core_u_io_mcmd_dataRd[31 : 16];
  assign _zz__zz_io_dmem_dataRd_2 = core_u_io_mcmd_dataRd[7 : 0];
  assign _zz__zz_io_dmem_dataRd_3 = core_u_io_mcmd_dataRd[15 : 8];
  assign _zz__zz_io_dmem_dataRd_4 = core_u_io_mcmd_dataRd[23 : 16];
  assign _zz__zz_io_dmem_dataRd_5 = core_u_io_mcmd_dataRd[31 : 24];
  MemWrapper_2 core_u (
    .io_mcmd_addr   (core_u_io_mcmd_addr[1:0]   ), //i
    .io_mcmd_enable (io_dmem_select             ), //i
    .io_mcmd_write  (io_dmem_enableWr           ), //i
    .io_mcmd_mask   (_zz_io_mcmd_mask[3:0]      ), //i
    .io_mcmd_dataWr (_zz_io_mcmd_dataWr[31:0]   ), //i
    .io_mcmd_dataRd (core_u_io_mcmd_dataRd[31:0]), //o
    .clkCore        (clkCore                    ), //i
    .rstSoc         (rstSoc                     )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  assign core_u_io_mcmd_addr = _zz_io_mcmd_addr[1:0];
  assign switch_PortDmem_l64 = _zz_switch_PortDmem_l64[1 : 0];
  always @(*) begin
    _zz_io_mcmd_mask = 4'b0000;
    if(when_PortDmem_l62) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b1111;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l68) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0011;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b1100;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l75) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0001;
        end
        2'b01 : begin
          _zz_io_mcmd_mask = 4'b0010;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b0100;
        end
        default : begin
          _zz_io_mcmd_mask = 4'b1000;
        end
      endcase
    end
  end

  assign when_PortDmem_l62 = (io_dmem_length == BusLength_word_);
  assign when_PortDmem_l68 = (io_dmem_length == BusLength_half_);
  assign when_PortDmem_l75 = (io_dmem_length == BusLength_byte_);
  always @(*) begin
    _zz_io_mcmd_dataWr = 32'h0;
    case(_zz_io_mcmd_mask)
      4'b1111 : begin
        _zz_io_mcmd_dataWr[31 : 0] = io_dmem_dataWr[31 : 0];
      end
      4'b0011 : begin
        _zz_io_mcmd_dataWr[15 : 0] = io_dmem_dataWr[15 : 0];
      end
      4'b1100 : begin
        _zz_io_mcmd_dataWr[31 : 16] = io_dmem_dataWr[15 : 0];
      end
      4'b0001 : begin
        _zz_io_mcmd_dataWr[7 : 0] = io_dmem_dataWr[7 : 0];
      end
      4'b0010 : begin
        _zz_io_mcmd_dataWr[15 : 8] = io_dmem_dataWr[7 : 0];
      end
      4'b0100 : begin
        _zz_io_mcmd_dataWr[23 : 16] = io_dmem_dataWr[7 : 0];
      end
      4'b1000 : begin
        _zz_io_mcmd_dataWr[31 : 24] = io_dmem_dataWr[7 : 0];
      end
      default : begin
        _zz_io_mcmd_dataWr = io_dmem_dataWr;
      end
    endcase
  end

  always @(*) begin
    _zz_io_dmem_dataRd = 32'h0;
    case(core_u_io_mcmd_mask_regNext)
      4'b1111 : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[31 : 0];
      end
      4'b0011 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd};
      end
      4'b1100 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd_1};
      end
      4'b0001 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_2};
      end
      4'b0010 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_3};
      end
      4'b0100 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_4};
      end
      4'b1000 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_5};
      end
      default : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd;
      end
    endcase
  end

  assign io_dmem_dataRd = _zz_io_dmem_dataRd;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      core_u_io_mcmd_mask_regNext <= 4'b0000;
    end else begin
      core_u_io_mcmd_mask_regNext <= _zz_io_mcmd_mask;
    end
  end


endmodule

module Ticker (
  input  wire [31:0]   io_dmem_addr,
  output reg  [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg                 xticker_u_io_ticklRd_0_enable;
  reg                 xticker_u_io_ticklRd_1_enable;
  reg                 xticker_u_io_ticklRd_2_enable;
  reg                 xticker_u_io_tickhRd_0_enable;
  reg                 xticker_u_io_tickhRd_1_enable;
  reg                 xticker_u_io_tickhRd_2_enable;
  reg                 xticker_u_io_cycleRd_0_enable;
  reg                 xticker_u_io_cycleRd_1_enable;
  reg                 xticker_u_io_cycleRd_2_enable;
  reg                 xticker_u_io_cycleWr_0_enable;
  reg        [31:0]   xticker_u_io_cycleWr_0_data;
  reg                 xticker_u_io_cycleWr_1_enable;
  reg        [31:0]   xticker_u_io_cycleWr_1_data;
  reg                 xticker_u_io_cycleWr_2_enable;
  reg        [31:0]   xticker_u_io_cycleWr_2_data;
  reg                 xticker_u_io_enableRd_enable;
  reg                 xticker_u_io_enableWr_enable;
  reg                 xticker_u_io_enableWr_data;
  reg                 xticker_u_io_clearWr_enable;
  reg                 xticker_u_io_clearWr_data;
  wire       [31:0]   xticker_u_io_ticklRd_0_data;
  wire       [31:0]   xticker_u_io_ticklRd_1_data;
  wire       [31:0]   xticker_u_io_ticklRd_2_data;
  wire       [31:0]   xticker_u_io_tickhRd_0_data;
  wire       [31:0]   xticker_u_io_tickhRd_1_data;
  wire       [31:0]   xticker_u_io_tickhRd_2_data;
  wire       [31:0]   xticker_u_io_cycleRd_0_data;
  wire       [31:0]   xticker_u_io_cycleRd_1_data;
  wire       [31:0]   xticker_u_io_cycleRd_2_data;
  wire                xticker_u_io_enableRd_data;
  wire       [29:0]   _zz_when_FieldDef_l42;
  wire       [31:0]   _zz_when_FieldDef_l43_1;
  wire       [29:0]   _zz_when_FieldDef_l42_1;
  wire       [31:0]   _zz_when_FieldDef_l43_1_1;
  wire       [29:0]   _zz_when_FieldDef_l42_2;
  wire       [31:0]   _zz_when_FieldDef_l43_2;
  wire       [29:0]   _zz_when_FieldDef_l25;
  wire       [31:0]   _zz_when_FieldDef_l26_2;
  wire       [29:0]   _zz_when_FieldDef_l42_3;
  wire       [31:0]   _zz_when_FieldDef_l43_3;
  wire       [29:0]   _zz_when_FieldDef_l42_4;
  wire       [31:0]   _zz_when_FieldDef_l43_4;
  wire       [29:0]   _zz_when_FieldDef_l42_5;
  wire       [31:0]   _zz_when_FieldDef_l43_5;
  wire       [29:0]   _zz_when_FieldDef_l25_1;
  wire       [31:0]   _zz_when_FieldDef_l26_1_1;
  wire       [29:0]   _zz_when_FieldDef_l42_6;
  wire       [31:0]   _zz_when_FieldDef_l43_6;
  wire       [29:0]   _zz_when_FieldDef_l42_7;
  wire       [31:0]   _zz_when_FieldDef_l43_7;
  wire       [29:0]   _zz_when_FieldDef_l42_8;
  wire       [31:0]   _zz_when_FieldDef_l43_8;
  wire       [29:0]   _zz_when_FieldDef_l25_2;
  wire       [31:0]   _zz_when_FieldDef_l26_2_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43;
  wire       [29:0]   _zz_when_FieldDef_l42_9;
  wire       [0:0]    _zz_io_enableWr_data;
  wire       [31:0]   _zz__zz_when_FieldDef_l26;
  wire       [29:0]   _zz_when_FieldDef_l25_3;
  wire       [0:0]    _zz_io_clearWr_data;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_1;
  wire       [29:0]   _zz_when_FieldDef_l25_4;
  wire                when_FieldDef_l42;
  wire                when_FieldDef_l43;
  wire                when_FieldDef_l42_1;
  wire                when_FieldDef_l43_1;
  wire                when_FieldDef_l42_2;
  wire                when_FieldDef_l43_2;
  wire                when_FieldDef_l25;
  wire                when_FieldDef_l26;
  wire                when_FieldDef_l42_3;
  wire                when_FieldDef_l43_3;
  wire                when_FieldDef_l42_4;
  wire                when_FieldDef_l43_4;
  wire                when_FieldDef_l42_5;
  wire                when_FieldDef_l43_5;
  wire                when_FieldDef_l25_1;
  wire                when_FieldDef_l26_1;
  wire                when_FieldDef_l42_6;
  wire                when_FieldDef_l43_6;
  wire                when_FieldDef_l42_7;
  wire                when_FieldDef_l43_7;
  wire                when_FieldDef_l42_8;
  wire                when_FieldDef_l43_8;
  wire                when_FieldDef_l25_2;
  wire                when_FieldDef_l26_2;
  wire       [1:0]    _zz_when_FieldDef_l43;
  wire                when_FieldDef_l42_9;
  wire                when_FieldDef_l43_9;
  wire                when_FieldDef_l44;
  wire                when_FieldDef_l45;
  wire       [1:0]    _zz_when_FieldDef_l26;
  wire                when_FieldDef_l25_3;
  wire                when_FieldDef_l26_3;
  wire                when_FieldDef_l27;
  wire                when_FieldDef_l28;
  wire       [1:0]    _zz_when_FieldDef_l26_1;
  wire                when_FieldDef_l25_4;
  wire                when_FieldDef_l26_4;
  wire                when_FieldDef_l27_1;
  wire                when_FieldDef_l28_1;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz_when_FieldDef_l42 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_1 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_1_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_2 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l25 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l26_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_3 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_3 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_4 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_4 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_5 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_5 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_1 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l26_1_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_6 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_6 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_7 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_7 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_8 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l43_8 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_2 = (io_dmem_addr >>> 2'd2);
  assign _zz_when_FieldDef_l26_2_1 = io_dmem_addr;
  assign _zz__zz_when_FieldDef_l43 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_9 = (io_dmem_addr >>> 2'd2);
  assign _zz_io_enableWr_data = 1'b0;
  assign _zz__zz_when_FieldDef_l26 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_3 = (io_dmem_addr >>> 2'd2);
  assign _zz_io_clearWr_data = 1'b0;
  assign _zz__zz_when_FieldDef_l26_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_4 = (io_dmem_addr >>> 2'd2);
  TickerDriver xticker_u (
    .io_ticklRd_0_enable (xticker_u_io_ticklRd_0_enable    ), //i
    .io_ticklRd_0_data   (xticker_u_io_ticklRd_0_data[31:0]), //o
    .io_ticklRd_1_enable (xticker_u_io_ticklRd_1_enable    ), //i
    .io_ticklRd_1_data   (xticker_u_io_ticklRd_1_data[31:0]), //o
    .io_ticklRd_2_enable (xticker_u_io_ticklRd_2_enable    ), //i
    .io_ticklRd_2_data   (xticker_u_io_ticklRd_2_data[31:0]), //o
    .io_tickhRd_0_enable (xticker_u_io_tickhRd_0_enable    ), //i
    .io_tickhRd_0_data   (xticker_u_io_tickhRd_0_data[31:0]), //o
    .io_tickhRd_1_enable (xticker_u_io_tickhRd_1_enable    ), //i
    .io_tickhRd_1_data   (xticker_u_io_tickhRd_1_data[31:0]), //o
    .io_tickhRd_2_enable (xticker_u_io_tickhRd_2_enable    ), //i
    .io_tickhRd_2_data   (xticker_u_io_tickhRd_2_data[31:0]), //o
    .io_cycleRd_0_enable (xticker_u_io_cycleRd_0_enable    ), //i
    .io_cycleRd_0_data   (xticker_u_io_cycleRd_0_data[31:0]), //o
    .io_cycleRd_1_enable (xticker_u_io_cycleRd_1_enable    ), //i
    .io_cycleRd_1_data   (xticker_u_io_cycleRd_1_data[31:0]), //o
    .io_cycleRd_2_enable (xticker_u_io_cycleRd_2_enable    ), //i
    .io_cycleRd_2_data   (xticker_u_io_cycleRd_2_data[31:0]), //o
    .io_cycleWr_0_enable (xticker_u_io_cycleWr_0_enable    ), //i
    .io_cycleWr_0_data   (xticker_u_io_cycleWr_0_data[31:0]), //i
    .io_cycleWr_1_enable (xticker_u_io_cycleWr_1_enable    ), //i
    .io_cycleWr_1_data   (xticker_u_io_cycleWr_1_data[31:0]), //i
    .io_cycleWr_2_enable (xticker_u_io_cycleWr_2_enable    ), //i
    .io_cycleWr_2_data   (xticker_u_io_cycleWr_2_data[31:0]), //i
    .io_enableRd_enable  (xticker_u_io_enableRd_enable     ), //i
    .io_enableRd_data    (xticker_u_io_enableRd_data       ), //o
    .io_enableWr_enable  (xticker_u_io_enableWr_enable     ), //i
    .io_enableWr_data    (xticker_u_io_enableWr_data       ), //i
    .io_clearWr_enable   (xticker_u_io_clearWr_enable      ), //i
    .io_clearWr_data     (xticker_u_io_clearWr_data        ), //i
    .clkCore             (clkCore                          ), //i
    .rstSoc              (rstSoc                           )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  always @(*) begin
    xticker_u_io_ticklRd_0_enable = 1'b0;
    if(when_FieldDef_l42) begin
      if(when_FieldDef_l43) begin
        xticker_u_io_ticklRd_0_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42 == 30'h10010000));
  assign when_FieldDef_l43 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_1[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_tickhRd_0_enable = 1'b0;
    if(when_FieldDef_l42_1) begin
      if(when_FieldDef_l43_1) begin
        xticker_u_io_tickhRd_0_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_1 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_1 == 30'h10010001));
  assign when_FieldDef_l43_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_1_1[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleRd_0_enable = 1'b0;
    if(when_FieldDef_l42_2) begin
      if(when_FieldDef_l43_2) begin
        xticker_u_io_cycleRd_0_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_2 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_2 == 30'h10010002));
  assign when_FieldDef_l43_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_2[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleWr_0_data = 32'h0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xticker_u_io_cycleWr_0_data = io_dmem_dataWr[31 : 0];
      end
    end
  end

  always @(*) begin
    xticker_u_io_cycleWr_0_enable = 1'b0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xticker_u_io_cycleWr_0_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l25 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25 == 30'h10010002));
  assign when_FieldDef_l26 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_2[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_ticklRd_1_enable = 1'b0;
    if(when_FieldDef_l42_3) begin
      if(when_FieldDef_l43_3) begin
        xticker_u_io_ticklRd_1_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_3 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_3 == 30'h10010004));
  assign when_FieldDef_l43_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_3[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_tickhRd_1_enable = 1'b0;
    if(when_FieldDef_l42_4) begin
      if(when_FieldDef_l43_4) begin
        xticker_u_io_tickhRd_1_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_4 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_4 == 30'h10010005));
  assign when_FieldDef_l43_4 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_4[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleRd_1_enable = 1'b0;
    if(when_FieldDef_l42_5) begin
      if(when_FieldDef_l43_5) begin
        xticker_u_io_cycleRd_1_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_5 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_5 == 30'h10010006));
  assign when_FieldDef_l43_5 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_5[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleWr_1_data = 32'h0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xticker_u_io_cycleWr_1_data = io_dmem_dataWr[31 : 0];
      end
    end
  end

  always @(*) begin
    xticker_u_io_cycleWr_1_enable = 1'b0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xticker_u_io_cycleWr_1_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l25_1 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_1 == 30'h10010006));
  assign when_FieldDef_l26_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_1_1[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_ticklRd_2_enable = 1'b0;
    if(when_FieldDef_l42_6) begin
      if(when_FieldDef_l43_6) begin
        xticker_u_io_ticklRd_2_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_6 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_6 == 30'h10010008));
  assign when_FieldDef_l43_6 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_6[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_tickhRd_2_enable = 1'b0;
    if(when_FieldDef_l42_7) begin
      if(when_FieldDef_l43_7) begin
        xticker_u_io_tickhRd_2_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_7 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_7 == 30'h10010009));
  assign when_FieldDef_l43_7 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_7[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleRd_2_enable = 1'b0;
    if(when_FieldDef_l42_8) begin
      if(when_FieldDef_l43_8) begin
        xticker_u_io_cycleRd_2_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l42_8 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_8 == 30'h1001000a));
  assign when_FieldDef_l43_8 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_8[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_cycleWr_2_data = 32'h0;
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xticker_u_io_cycleWr_2_data = io_dmem_dataWr[31 : 0];
      end
    end
  end

  always @(*) begin
    xticker_u_io_cycleWr_2_enable = 1'b0;
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xticker_u_io_cycleWr_2_enable = 1'b1;
      end
    end
  end

  assign when_FieldDef_l25_2 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_2 == 30'h1001000a));
  assign when_FieldDef_l26_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_2_1[1 : 0] == 2'b00));
  always @(*) begin
    xticker_u_io_enableRd_enable = 1'b0;
    if(when_FieldDef_l42_9) begin
      if(when_FieldDef_l43_9) begin
        xticker_u_io_enableRd_enable = 1'b1;
      end
      if(when_FieldDef_l44) begin
        xticker_u_io_enableRd_enable = 1'b1;
      end
      if(when_FieldDef_l45) begin
        xticker_u_io_enableRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43 = _zz__zz_when_FieldDef_l43[1 : 0];
  assign when_FieldDef_l42_9 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_9 == 30'h1001000c));
  assign when_FieldDef_l43_9 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l44 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l45 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43 == 2'b00));
  always @(*) begin
    xticker_u_io_enableWr_data = _zz_io_enableWr_data[0];
    if(when_FieldDef_l25_3) begin
      if(when_FieldDef_l26_3) begin
        xticker_u_io_enableWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l27) begin
        xticker_u_io_enableWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l28) begin
        xticker_u_io_enableWr_data = io_dmem_dataWr[0];
      end
    end
  end

  always @(*) begin
    xticker_u_io_enableWr_enable = 1'b0;
    if(when_FieldDef_l25_3) begin
      if(when_FieldDef_l26_3) begin
        xticker_u_io_enableWr_enable = 1'b1;
      end
      if(when_FieldDef_l27) begin
        xticker_u_io_enableWr_enable = 1'b1;
      end
      if(when_FieldDef_l28) begin
        xticker_u_io_enableWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26 = _zz__zz_when_FieldDef_l26[1 : 0];
  assign when_FieldDef_l25_3 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_3 == 30'h1001000c));
  assign when_FieldDef_l26_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l27 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l28 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26 == 2'b00));
  always @(*) begin
    xticker_u_io_clearWr_data = _zz_io_clearWr_data[0];
    if(when_FieldDef_l25_4) begin
      if(when_FieldDef_l26_4) begin
        xticker_u_io_clearWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l27_1) begin
        xticker_u_io_clearWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l28_1) begin
        xticker_u_io_clearWr_data = io_dmem_dataWr[0];
      end
    end
  end

  always @(*) begin
    xticker_u_io_clearWr_enable = 1'b0;
    if(when_FieldDef_l25_4) begin
      if(when_FieldDef_l26_4) begin
        xticker_u_io_clearWr_enable = 1'b1;
      end
      if(when_FieldDef_l27_1) begin
        xticker_u_io_clearWr_enable = 1'b1;
      end
      if(when_FieldDef_l28_1) begin
        xticker_u_io_clearWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_1 = _zz__zz_when_FieldDef_l26_1[1 : 0];
  assign when_FieldDef_l25_4 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_4 == 30'h1001000d));
  assign when_FieldDef_l26_4 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l27_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l28_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      io_dmem_dataRd <= 32'h0;
    end else begin
      io_dmem_dataRd <= 32'h0;
      if(when_FieldDef_l42) begin
        if(when_FieldDef_l43) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_ticklRd_0_data;
        end
      end
      if(when_FieldDef_l42_1) begin
        if(when_FieldDef_l43_1) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_tickhRd_0_data;
        end
      end
      if(when_FieldDef_l42_2) begin
        if(when_FieldDef_l43_2) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_cycleRd_0_data;
        end
      end
      if(when_FieldDef_l42_3) begin
        if(when_FieldDef_l43_3) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_ticklRd_1_data;
        end
      end
      if(when_FieldDef_l42_4) begin
        if(when_FieldDef_l43_4) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_tickhRd_1_data;
        end
      end
      if(when_FieldDef_l42_5) begin
        if(when_FieldDef_l43_5) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_cycleRd_1_data;
        end
      end
      if(when_FieldDef_l42_6) begin
        if(when_FieldDef_l43_6) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_ticklRd_2_data;
        end
      end
      if(when_FieldDef_l42_7) begin
        if(when_FieldDef_l43_7) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_tickhRd_2_data;
        end
      end
      if(when_FieldDef_l42_8) begin
        if(when_FieldDef_l43_8) begin
          io_dmem_dataRd[31 : 0] <= xticker_u_io_cycleRd_2_data;
        end
      end
      if(when_FieldDef_l42_9) begin
        if(when_FieldDef_l43_9) begin
          io_dmem_dataRd[0 : 0] <= xticker_u_io_enableRd_data;
        end
        if(when_FieldDef_l44) begin
          io_dmem_dataRd[0 : 0] <= xticker_u_io_enableRd_data;
        end
        if(when_FieldDef_l45) begin
          io_dmem_dataRd[0 : 0] <= xticker_u_io_enableRd_data;
        end
      end
    end
  end


endmodule

module Spi (
  input  wire [31:0]   io_dmem_addr,
  output reg  [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  output wire          io_spi_sel,
  output wire          io_spi_sclk,
  output wire          io_spi_mosi,
  input  wire          io_spi_miso,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg                 xspi_u_io_divisorRd_enable;
  reg                 xspi_u_io_divisorWr_enable;
  reg        [15:0]   xspi_u_io_divisorWr_data;
  reg                 xspi_u_io_mosiWr_enable;
  reg        [7:0]    xspi_u_io_mosiWr_data;
  reg                 xspi_u_io_misoRd_enable;
  reg                 xspi_u_io_selRd_enable;
  reg                 xspi_u_io_selWr_enable;
  reg                 xspi_u_io_selWr_data;
  reg                 xspi_u_io_busyRd_enable;
  wire       [15:0]   xspi_u_io_divisorRd_data;
  wire       [7:0]    xspi_u_io_misoRd_data;
  wire                xspi_u_io_selRd_data;
  wire                xspi_u_io_busyRd_data;
  wire                xspi_u_io_spi_sel;
  wire                xspi_u_io_spi_sclk;
  wire                xspi_u_io_spi_mosi;
  wire       [31:0]   _zz__zz_when_FieldDef_l26;
  wire       [29:0]   _zz_when_FieldDef_l25;
  wire       [31:0]   _zz__zz_when_FieldDef_l43;
  wire       [29:0]   _zz_when_FieldDef_l42;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_1;
  wire       [29:0]   _zz_when_FieldDef_l25_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_1;
  wire       [29:0]   _zz_when_FieldDef_l42_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_2;
  wire       [29:0]   _zz_when_FieldDef_l42_2;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_3;
  wire       [29:0]   _zz_when_FieldDef_l42_3;
  wire       [0:0]    _zz_io_selWr_data;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_2;
  wire       [29:0]   _zz_when_FieldDef_l25_2;
  wire       [1:0]    _zz_when_FieldDef_l26;
  wire                when_FieldDef_l25;
  wire                when_FieldDef_l26;
  wire                when_FieldDef_l27;
  wire                when_FieldDef_l28;
  wire       [1:0]    _zz_when_FieldDef_l43;
  wire                when_FieldDef_l42;
  wire                when_FieldDef_l43;
  wire                when_FieldDef_l44;
  wire                when_FieldDef_l45;
  wire       [1:0]    _zz_when_FieldDef_l26_1;
  wire                when_FieldDef_l25_1;
  wire                when_FieldDef_l26_1;
  wire                when_FieldDef_l27_1;
  wire       [1:0]    _zz_when_FieldDef_l43_1;
  wire                when_FieldDef_l42_1;
  wire                when_FieldDef_l43_1;
  wire                when_FieldDef_l44_1;
  wire       [1:0]    _zz_when_FieldDef_l43_2;
  wire                when_FieldDef_l42_2;
  wire                when_FieldDef_l43_2;
  wire                when_FieldDef_l44_2;
  wire                when_FieldDef_l45_1;
  wire       [1:0]    _zz_when_FieldDef_l43_3;
  wire                when_FieldDef_l42_3;
  wire                when_FieldDef_l43_3;
  wire                when_FieldDef_l44_3;
  wire                when_FieldDef_l45_2;
  wire       [1:0]    _zz_when_FieldDef_l26_2;
  wire                when_FieldDef_l25_2;
  wire                when_FieldDef_l26_2;
  wire                when_FieldDef_l27_2;
  wire                when_FieldDef_l28_1;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz__zz_when_FieldDef_l26 = io_dmem_addr;
  assign _zz_when_FieldDef_l25 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43 = io_dmem_addr;
  assign _zz_when_FieldDef_l42 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_2 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_3 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_3 = (io_dmem_addr >>> 2'd2);
  assign _zz_io_selWr_data = 1'b0;
  assign _zz__zz_when_FieldDef_l26_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_2 = (io_dmem_addr >>> 2'd2);
  SpiDriver xspi_u (
    .io_divisorRd_enable (xspi_u_io_divisorRd_enable    ), //i
    .io_divisorRd_data   (xspi_u_io_divisorRd_data[15:0]), //o
    .io_divisorWr_enable (xspi_u_io_divisorWr_enable    ), //i
    .io_divisorWr_data   (xspi_u_io_divisorWr_data[15:0]), //i
    .io_mosiWr_enable    (xspi_u_io_mosiWr_enable       ), //i
    .io_mosiWr_data      (xspi_u_io_mosiWr_data[7:0]    ), //i
    .io_misoRd_enable    (xspi_u_io_misoRd_enable       ), //i
    .io_misoRd_data      (xspi_u_io_misoRd_data[7:0]    ), //o
    .io_selRd_enable     (xspi_u_io_selRd_enable        ), //i
    .io_selRd_data       (xspi_u_io_selRd_data          ), //o
    .io_selWr_enable     (xspi_u_io_selWr_enable        ), //i
    .io_selWr_data       (xspi_u_io_selWr_data          ), //i
    .io_busyRd_enable    (xspi_u_io_busyRd_enable       ), //i
    .io_busyRd_data      (xspi_u_io_busyRd_data         ), //o
    .io_spi_sel          (xspi_u_io_spi_sel             ), //o
    .io_spi_sclk         (xspi_u_io_spi_sclk            ), //o
    .io_spi_mosi         (xspi_u_io_spi_mosi            ), //o
    .io_spi_miso         (io_spi_miso                   ), //i
    .clkCore             (clkCore                       ), //i
    .rstSoc              (rstSoc                        )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  always @(*) begin
    xspi_u_io_mosiWr_data = 8'h0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xspi_u_io_mosiWr_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l27) begin
        xspi_u_io_mosiWr_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28) begin
        xspi_u_io_mosiWr_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xspi_u_io_mosiWr_enable = 1'b0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xspi_u_io_mosiWr_enable = 1'b1;
      end
      if(when_FieldDef_l27) begin
        xspi_u_io_mosiWr_enable = 1'b1;
      end
      if(when_FieldDef_l28) begin
        xspi_u_io_mosiWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26 = _zz__zz_when_FieldDef_l26[1 : 0];
  assign when_FieldDef_l25 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25 == 30'h10008000));
  assign when_FieldDef_l26 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l27 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l28 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26 == 2'b00));
  always @(*) begin
    xspi_u_io_misoRd_enable = 1'b0;
    if(when_FieldDef_l42) begin
      if(when_FieldDef_l43) begin
        xspi_u_io_misoRd_enable = 1'b1;
      end
      if(when_FieldDef_l44) begin
        xspi_u_io_misoRd_enable = 1'b1;
      end
      if(when_FieldDef_l45) begin
        xspi_u_io_misoRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43 = _zz__zz_when_FieldDef_l43[1 : 0];
  assign when_FieldDef_l42 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42 == 30'h10008001));
  assign when_FieldDef_l43 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l44 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l45 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43 == 2'b00));
  always @(*) begin
    xspi_u_io_divisorWr_data = 16'h0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xspi_u_io_divisorWr_data = io_dmem_dataWr[15 : 0];
      end
      if(when_FieldDef_l27_1) begin
        xspi_u_io_divisorWr_data = io_dmem_dataWr[15 : 0];
      end
    end
  end

  always @(*) begin
    xspi_u_io_divisorWr_enable = 1'b0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xspi_u_io_divisorWr_enable = 1'b1;
      end
      if(when_FieldDef_l27_1) begin
        xspi_u_io_divisorWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_1 = _zz__zz_when_FieldDef_l26_1[1 : 0];
  assign when_FieldDef_l25_1 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_1 == 30'h10008002));
  assign when_FieldDef_l26_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l27_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  always @(*) begin
    xspi_u_io_divisorRd_enable = 1'b0;
    if(when_FieldDef_l42_1) begin
      if(when_FieldDef_l43_1) begin
        xspi_u_io_divisorRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_1) begin
        xspi_u_io_divisorRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_1 = _zz__zz_when_FieldDef_l43_1[1 : 0];
  assign when_FieldDef_l42_1 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_1 == 30'h10008002));
  assign when_FieldDef_l43_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  assign when_FieldDef_l44_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  always @(*) begin
    xspi_u_io_busyRd_enable = 1'b0;
    if(when_FieldDef_l42_2) begin
      if(when_FieldDef_l43_2) begin
        xspi_u_io_busyRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_2) begin
        xspi_u_io_busyRd_enable = 1'b1;
      end
      if(when_FieldDef_l45_1) begin
        xspi_u_io_busyRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_2 = _zz__zz_when_FieldDef_l43_2[1 : 0];
  assign when_FieldDef_l42_2 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_2 == 30'h10008003));
  assign when_FieldDef_l43_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l44_2 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l45_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  always @(*) begin
    xspi_u_io_selRd_enable = 1'b0;
    if(when_FieldDef_l42_3) begin
      if(when_FieldDef_l43_3) begin
        xspi_u_io_selRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_3) begin
        xspi_u_io_selRd_enable = 1'b1;
      end
      if(when_FieldDef_l45_2) begin
        xspi_u_io_selRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_3 = _zz__zz_when_FieldDef_l43_3[1 : 0];
  assign when_FieldDef_l42_3 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_3 == 30'h10008004));
  assign when_FieldDef_l43_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l44_3 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l45_2 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  always @(*) begin
    xspi_u_io_selWr_data = _zz_io_selWr_data[0];
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xspi_u_io_selWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l27_2) begin
        xspi_u_io_selWr_data = io_dmem_dataWr[0];
      end
      if(when_FieldDef_l28_1) begin
        xspi_u_io_selWr_data = io_dmem_dataWr[0];
      end
    end
  end

  always @(*) begin
    xspi_u_io_selWr_enable = 1'b0;
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xspi_u_io_selWr_enable = 1'b1;
      end
      if(when_FieldDef_l27_2) begin
        xspi_u_io_selWr_enable = 1'b1;
      end
      if(when_FieldDef_l28_1) begin
        xspi_u_io_selWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_2 = _zz__zz_when_FieldDef_l26_2[1 : 0];
  assign when_FieldDef_l25_2 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_2 == 30'h10008004));
  assign when_FieldDef_l26_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_2 == 2'b00));
  assign when_FieldDef_l27_2 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_2 == 2'b00));
  assign when_FieldDef_l28_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_2 == 2'b00));
  assign io_spi_sel = xspi_u_io_spi_sel;
  assign io_spi_sclk = xspi_u_io_spi_sclk;
  assign io_spi_mosi = xspi_u_io_spi_mosi;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      io_dmem_dataRd <= 32'h0;
    end else begin
      io_dmem_dataRd <= 32'h0;
      if(when_FieldDef_l42) begin
        if(when_FieldDef_l43) begin
          io_dmem_dataRd[7 : 0] <= xspi_u_io_misoRd_data;
        end
        if(when_FieldDef_l44) begin
          io_dmem_dataRd[7 : 0] <= xspi_u_io_misoRd_data;
        end
        if(when_FieldDef_l45) begin
          io_dmem_dataRd[7 : 0] <= xspi_u_io_misoRd_data;
        end
      end
      if(when_FieldDef_l42_1) begin
        if(when_FieldDef_l43_1) begin
          io_dmem_dataRd[15 : 0] <= xspi_u_io_divisorRd_data;
        end
        if(when_FieldDef_l44_1) begin
          io_dmem_dataRd[15 : 0] <= xspi_u_io_divisorRd_data;
        end
      end
      if(when_FieldDef_l42_2) begin
        if(when_FieldDef_l43_2) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_busyRd_data;
        end
        if(when_FieldDef_l44_2) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_busyRd_data;
        end
        if(when_FieldDef_l45_1) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_busyRd_data;
        end
      end
      if(when_FieldDef_l42_3) begin
        if(when_FieldDef_l43_3) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_selRd_data;
        end
        if(when_FieldDef_l44_3) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_selRd_data;
        end
        if(when_FieldDef_l45_2) begin
          io_dmem_dataRd[0 : 0] <= xspi_u_io_selRd_data;
        end
      end
    end
  end


endmodule

module Uart (
  input  wire [31:0]   io_dmem_addr,
  output reg  [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  output wire          io_uart_tx,
  input  wire          io_uart_rx,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg                 xuart_u_io_txWr_enable;
  reg        [7:0]    xuart_u_io_txWr_data;
  reg                 xuart_u_io_rxRd_enable;
  reg                 xuart_u_io_divisorRd_enable;
  reg                 xuart_u_io_divisorWr_enable;
  reg        [15:0]   xuart_u_io_divisorWr_data;
  reg                 xuart_u_io_txbusyRd_enable;
  reg                 xuart_u_io_rxavaiRd_enable;
  wire       [7:0]    xuart_u_io_rxRd_data;
  wire       [15:0]   xuart_u_io_divisorRd_data;
  wire                xuart_u_io_txbusyRd_data;
  wire                xuart_u_io_rxavaiRd_data;
  wire                xuart_u_io_uart_tx;
  wire       [31:0]   _zz__zz_when_FieldDef_l26;
  wire       [29:0]   _zz_when_FieldDef_l25;
  wire       [31:0]   _zz__zz_when_FieldDef_l43;
  wire       [29:0]   _zz_when_FieldDef_l42;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_1;
  wire       [29:0]   _zz_when_FieldDef_l25_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_1;
  wire       [29:0]   _zz_when_FieldDef_l42_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_2;
  wire       [29:0]   _zz_when_FieldDef_l42_2;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_3;
  wire       [29:0]   _zz_when_FieldDef_l42_3;
  wire       [1:0]    _zz_when_FieldDef_l26;
  wire                when_FieldDef_l25;
  wire                when_FieldDef_l26;
  wire                when_FieldDef_l27;
  wire                when_FieldDef_l28;
  wire       [1:0]    _zz_when_FieldDef_l43;
  wire                when_FieldDef_l42;
  wire                when_FieldDef_l43;
  wire                when_FieldDef_l44;
  wire                when_FieldDef_l45;
  wire       [1:0]    _zz_when_FieldDef_l26_1;
  wire                when_FieldDef_l25_1;
  wire                when_FieldDef_l26_1;
  wire                when_FieldDef_l27_1;
  wire       [1:0]    _zz_when_FieldDef_l43_1;
  wire                when_FieldDef_l42_1;
  wire                when_FieldDef_l43_1;
  wire                when_FieldDef_l44_1;
  wire       [1:0]    _zz_when_FieldDef_l43_2;
  wire                when_FieldDef_l42_2;
  wire                when_FieldDef_l43_2;
  wire                when_FieldDef_l44_2;
  wire                when_FieldDef_l45_1;
  wire       [1:0]    _zz_when_FieldDef_l43_3;
  wire                when_FieldDef_l42_3;
  wire                when_FieldDef_l43_3;
  wire                when_FieldDef_l44_3;
  wire                when_FieldDef_l45_2;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz__zz_when_FieldDef_l26 = io_dmem_addr;
  assign _zz_when_FieldDef_l25 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43 = io_dmem_addr;
  assign _zz_when_FieldDef_l42 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_2 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_3 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_3 = (io_dmem_addr >>> 2'd2);
  UartDriver xuart_u (
    .io_txWr_enable      (xuart_u_io_txWr_enable         ), //i
    .io_txWr_data        (xuart_u_io_txWr_data[7:0]      ), //i
    .io_rxRd_enable      (xuart_u_io_rxRd_enable         ), //i
    .io_rxRd_data        (xuart_u_io_rxRd_data[7:0]      ), //o
    .io_divisorRd_enable (xuart_u_io_divisorRd_enable    ), //i
    .io_divisorRd_data   (xuart_u_io_divisorRd_data[15:0]), //o
    .io_divisorWr_enable (xuart_u_io_divisorWr_enable    ), //i
    .io_divisorWr_data   (xuart_u_io_divisorWr_data[15:0]), //i
    .io_txbusyRd_enable  (xuart_u_io_txbusyRd_enable     ), //i
    .io_txbusyRd_data    (xuart_u_io_txbusyRd_data       ), //o
    .io_rxavaiRd_enable  (xuart_u_io_rxavaiRd_enable     ), //i
    .io_rxavaiRd_data    (xuart_u_io_rxavaiRd_data       ), //o
    .io_uart_tx          (xuart_u_io_uart_tx             ), //o
    .io_uart_rx          (io_uart_rx                     ), //i
    .clkCore             (clkCore                        ), //i
    .rstSoc              (rstSoc                         )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  always @(*) begin
    xuart_u_io_txWr_data = 8'h0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xuart_u_io_txWr_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l27) begin
        xuart_u_io_txWr_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28) begin
        xuart_u_io_txWr_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xuart_u_io_txWr_enable = 1'b0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xuart_u_io_txWr_enable = 1'b1;
      end
      if(when_FieldDef_l27) begin
        xuart_u_io_txWr_enable = 1'b1;
      end
      if(when_FieldDef_l28) begin
        xuart_u_io_txWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26 = _zz__zz_when_FieldDef_l26[1 : 0];
  assign when_FieldDef_l25 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25 == 30'h10004000));
  assign when_FieldDef_l26 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l27 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l28 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26 == 2'b00));
  always @(*) begin
    xuart_u_io_rxRd_enable = 1'b0;
    if(when_FieldDef_l42) begin
      if(when_FieldDef_l43) begin
        xuart_u_io_rxRd_enable = 1'b1;
      end
      if(when_FieldDef_l44) begin
        xuart_u_io_rxRd_enable = 1'b1;
      end
      if(when_FieldDef_l45) begin
        xuart_u_io_rxRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43 = _zz__zz_when_FieldDef_l43[1 : 0];
  assign when_FieldDef_l42 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42 == 30'h10004001));
  assign when_FieldDef_l43 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l44 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l45 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43 == 2'b00));
  always @(*) begin
    xuart_u_io_divisorWr_data = 16'h0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xuart_u_io_divisorWr_data = io_dmem_dataWr[15 : 0];
      end
      if(when_FieldDef_l27_1) begin
        xuart_u_io_divisorWr_data = io_dmem_dataWr[15 : 0];
      end
    end
  end

  always @(*) begin
    xuart_u_io_divisorWr_enable = 1'b0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xuart_u_io_divisorWr_enable = 1'b1;
      end
      if(when_FieldDef_l27_1) begin
        xuart_u_io_divisorWr_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_1 = _zz__zz_when_FieldDef_l26_1[1 : 0];
  assign when_FieldDef_l25_1 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_1 == 30'h10004002));
  assign when_FieldDef_l26_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l27_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  always @(*) begin
    xuart_u_io_divisorRd_enable = 1'b0;
    if(when_FieldDef_l42_1) begin
      if(when_FieldDef_l43_1) begin
        xuart_u_io_divisorRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_1) begin
        xuart_u_io_divisorRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_1 = _zz__zz_when_FieldDef_l43_1[1 : 0];
  assign when_FieldDef_l42_1 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_1 == 30'h10004002));
  assign when_FieldDef_l43_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  assign when_FieldDef_l44_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  always @(*) begin
    xuart_u_io_txbusyRd_enable = 1'b0;
    if(when_FieldDef_l42_2) begin
      if(when_FieldDef_l43_2) begin
        xuart_u_io_txbusyRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_2) begin
        xuart_u_io_txbusyRd_enable = 1'b1;
      end
      if(when_FieldDef_l45_1) begin
        xuart_u_io_txbusyRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_2 = _zz__zz_when_FieldDef_l43_2[1 : 0];
  assign when_FieldDef_l42_2 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_2 == 30'h10004003));
  assign when_FieldDef_l43_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l44_2 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l45_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  always @(*) begin
    xuart_u_io_rxavaiRd_enable = 1'b0;
    if(when_FieldDef_l42_3) begin
      if(when_FieldDef_l43_3) begin
        xuart_u_io_rxavaiRd_enable = 1'b1;
      end
      if(when_FieldDef_l44_3) begin
        xuart_u_io_rxavaiRd_enable = 1'b1;
      end
      if(when_FieldDef_l45_2) begin
        xuart_u_io_rxavaiRd_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_3 = _zz__zz_when_FieldDef_l43_3[1 : 0];
  assign when_FieldDef_l42_3 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_3 == 30'h10004003));
  assign when_FieldDef_l43_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l44_3 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l45_2 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign io_uart_tx = xuart_u_io_uart_tx;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      io_dmem_dataRd <= 32'h0;
    end else begin
      io_dmem_dataRd <= 32'h0;
      if(when_FieldDef_l42) begin
        if(when_FieldDef_l43) begin
          io_dmem_dataRd[7 : 0] <= xuart_u_io_rxRd_data;
        end
        if(when_FieldDef_l44) begin
          io_dmem_dataRd[7 : 0] <= xuart_u_io_rxRd_data;
        end
        if(when_FieldDef_l45) begin
          io_dmem_dataRd[7 : 0] <= xuart_u_io_rxRd_data;
        end
      end
      if(when_FieldDef_l42_1) begin
        if(when_FieldDef_l43_1) begin
          io_dmem_dataRd[15 : 0] <= xuart_u_io_divisorRd_data;
        end
        if(when_FieldDef_l44_1) begin
          io_dmem_dataRd[15 : 0] <= xuart_u_io_divisorRd_data;
        end
      end
      if(when_FieldDef_l42_2) begin
        if(when_FieldDef_l43_2) begin
          io_dmem_dataRd[0 : 0] <= xuart_u_io_txbusyRd_data;
        end
        if(when_FieldDef_l44_2) begin
          io_dmem_dataRd[0 : 0] <= xuart_u_io_txbusyRd_data;
        end
        if(when_FieldDef_l45_1) begin
          io_dmem_dataRd[0 : 0] <= xuart_u_io_txbusyRd_data;
        end
      end
      if(when_FieldDef_l42_3) begin
        if(when_FieldDef_l43_3) begin
          io_dmem_dataRd[1 : 1] <= xuart_u_io_rxavaiRd_data;
        end
        if(when_FieldDef_l44_3) begin
          io_dmem_dataRd[1 : 1] <= xuart_u_io_rxavaiRd_data;
        end
        if(when_FieldDef_l45_2) begin
          io_dmem_dataRd[1 : 1] <= xuart_u_io_rxavaiRd_data;
        end
      end
    end
  end


endmodule

module Gpio (
  input  wire [31:0]   io_dmem_addr,
  output reg  [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  input  wire [31:0]   io_gpio_0_read,
  output wire [31:0]   io_gpio_0_write,
  output wire [31:0]   io_gpio_0_writeEnable,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg                 xgpio_u_io_idatRd_0_0_enable;
  reg                 xgpio_u_io_idatRd_0_1_enable;
  reg                 xgpio_u_io_idatRd_0_2_enable;
  reg                 xgpio_u_io_idatRd_0_3_enable;
  reg                 xgpio_u_io_oenaRd_0_0_enable;
  reg                 xgpio_u_io_oenaRd_0_1_enable;
  reg                 xgpio_u_io_oenaRd_0_2_enable;
  reg                 xgpio_u_io_oenaRd_0_3_enable;
  reg                 xgpio_u_io_oenaWr_0_0_enable;
  reg        [7:0]    xgpio_u_io_oenaWr_0_0_data;
  reg                 xgpio_u_io_oenaWr_0_1_enable;
  reg        [7:0]    xgpio_u_io_oenaWr_0_1_data;
  reg                 xgpio_u_io_oenaWr_0_2_enable;
  reg        [7:0]    xgpio_u_io_oenaWr_0_2_data;
  reg                 xgpio_u_io_oenaWr_0_3_enable;
  reg        [7:0]    xgpio_u_io_oenaWr_0_3_data;
  reg                 xgpio_u_io_odatRd_0_0_enable;
  reg                 xgpio_u_io_odatRd_0_1_enable;
  reg                 xgpio_u_io_odatRd_0_2_enable;
  reg                 xgpio_u_io_odatRd_0_3_enable;
  reg                 xgpio_u_io_odatWr_0_0_enable;
  reg        [7:0]    xgpio_u_io_odatWr_0_0_data;
  reg                 xgpio_u_io_odatWr_0_1_enable;
  reg        [7:0]    xgpio_u_io_odatWr_0_1_data;
  reg                 xgpio_u_io_odatWr_0_2_enable;
  reg        [7:0]    xgpio_u_io_odatWr_0_2_data;
  reg                 xgpio_u_io_odatWr_0_3_enable;
  reg        [7:0]    xgpio_u_io_odatWr_0_3_data;
  wire       [7:0]    xgpio_u_io_idatRd_0_0_data;
  wire       [7:0]    xgpio_u_io_idatRd_0_1_data;
  wire       [7:0]    xgpio_u_io_idatRd_0_2_data;
  wire       [7:0]    xgpio_u_io_idatRd_0_3_data;
  wire       [7:0]    xgpio_u_io_oenaRd_0_0_data;
  wire       [7:0]    xgpio_u_io_oenaRd_0_1_data;
  wire       [7:0]    xgpio_u_io_oenaRd_0_2_data;
  wire       [7:0]    xgpio_u_io_oenaRd_0_3_data;
  wire       [7:0]    xgpio_u_io_odatRd_0_0_data;
  wire       [7:0]    xgpio_u_io_odatRd_0_1_data;
  wire       [7:0]    xgpio_u_io_odatRd_0_2_data;
  wire       [7:0]    xgpio_u_io_odatRd_0_3_data;
  wire       [31:0]   xgpio_u_io_gpio_0_write;
  wire       [31:0]   xgpio_u_io_gpio_0_writeEnable;
  wire       [31:0]   _zz__zz_when_FieldDef_l43;
  wire       [29:0]   _zz_when_FieldDef_l42;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_1;
  wire       [29:0]   _zz_when_FieldDef_l42_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l26;
  wire       [29:0]   _zz_when_FieldDef_l25;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_2;
  wire       [29:0]   _zz_when_FieldDef_l42_2;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_1;
  wire       [29:0]   _zz_when_FieldDef_l25_1;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_3;
  wire       [29:0]   _zz_when_FieldDef_l42_3;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_4;
  wire       [29:0]   _zz_when_FieldDef_l42_4;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_2;
  wire       [29:0]   _zz_when_FieldDef_l25_2;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_5;
  wire       [29:0]   _zz_when_FieldDef_l42_5;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_3;
  wire       [29:0]   _zz_when_FieldDef_l25_3;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_6;
  wire       [29:0]   _zz_when_FieldDef_l42_6;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_7;
  wire       [29:0]   _zz_when_FieldDef_l42_7;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_4;
  wire       [29:0]   _zz_when_FieldDef_l25_4;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_8;
  wire       [29:0]   _zz_when_FieldDef_l42_8;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_5;
  wire       [29:0]   _zz_when_FieldDef_l25_5;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_9;
  wire       [29:0]   _zz_when_FieldDef_l42_9;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_10;
  wire       [29:0]   _zz_when_FieldDef_l42_10;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_6;
  wire       [29:0]   _zz_when_FieldDef_l25_6;
  wire       [31:0]   _zz__zz_when_FieldDef_l43_11;
  wire       [29:0]   _zz_when_FieldDef_l42_11;
  wire       [31:0]   _zz__zz_when_FieldDef_l26_7;
  wire       [29:0]   _zz_when_FieldDef_l25_7;
  wire       [1:0]    _zz_when_FieldDef_l43;
  wire                when_FieldDef_l42;
  wire                when_FieldDef_l43;
  wire                when_FieldDef_l44;
  wire                when_FieldDef_l45;
  wire       [1:0]    _zz_when_FieldDef_l43_1;
  wire                when_FieldDef_l42_1;
  wire                when_FieldDef_l43_1;
  wire                when_FieldDef_l44_1;
  wire                when_FieldDef_l45_1;
  wire       [1:0]    _zz_when_FieldDef_l26;
  wire                when_FieldDef_l25;
  wire                when_FieldDef_l26;
  wire                when_FieldDef_l27;
  wire                when_FieldDef_l28;
  wire       [1:0]    _zz_when_FieldDef_l43_2;
  wire                when_FieldDef_l42_2;
  wire                when_FieldDef_l43_2;
  wire                when_FieldDef_l44_2;
  wire                when_FieldDef_l45_2;
  wire       [1:0]    _zz_when_FieldDef_l26_1;
  wire                when_FieldDef_l25_1;
  wire                when_FieldDef_l26_1;
  wire                when_FieldDef_l27_1;
  wire                when_FieldDef_l28_1;
  wire       [1:0]    _zz_when_FieldDef_l43_3;
  wire                when_FieldDef_l42_3;
  wire                when_FieldDef_l43_3;
  wire                when_FieldDef_l44_3;
  wire                when_FieldDef_l45_3;
  wire       [1:0]    _zz_when_FieldDef_l43_4;
  wire                when_FieldDef_l42_4;
  wire                when_FieldDef_l43_4;
  wire                when_FieldDef_l44_4;
  wire                when_FieldDef_l45_4;
  wire       [1:0]    _zz_when_FieldDef_l26_2;
  wire                when_FieldDef_l25_2;
  wire                when_FieldDef_l26_2;
  wire                when_FieldDef_l27_2;
  wire                when_FieldDef_l28_2;
  wire       [1:0]    _zz_when_FieldDef_l43_5;
  wire                when_FieldDef_l42_5;
  wire                when_FieldDef_l43_5;
  wire                when_FieldDef_l44_5;
  wire                when_FieldDef_l45_5;
  wire       [1:0]    _zz_when_FieldDef_l26_3;
  wire                when_FieldDef_l25_3;
  wire                when_FieldDef_l26_3;
  wire                when_FieldDef_l27_3;
  wire                when_FieldDef_l28_3;
  wire       [1:0]    _zz_when_FieldDef_l43_6;
  wire                when_FieldDef_l42_6;
  wire                when_FieldDef_l43_6;
  wire                when_FieldDef_l44_6;
  wire                when_FieldDef_l45_6;
  wire       [1:0]    _zz_when_FieldDef_l43_7;
  wire                when_FieldDef_l42_7;
  wire                when_FieldDef_l43_7;
  wire                when_FieldDef_l44_7;
  wire                when_FieldDef_l45_7;
  wire       [1:0]    _zz_when_FieldDef_l26_4;
  wire                when_FieldDef_l25_4;
  wire                when_FieldDef_l26_4;
  wire                when_FieldDef_l27_4;
  wire                when_FieldDef_l28_4;
  wire       [1:0]    _zz_when_FieldDef_l43_8;
  wire                when_FieldDef_l42_8;
  wire                when_FieldDef_l43_8;
  wire                when_FieldDef_l44_8;
  wire                when_FieldDef_l45_8;
  wire       [1:0]    _zz_when_FieldDef_l26_5;
  wire                when_FieldDef_l25_5;
  wire                when_FieldDef_l26_5;
  wire                when_FieldDef_l27_5;
  wire                when_FieldDef_l28_5;
  wire       [1:0]    _zz_when_FieldDef_l43_9;
  wire                when_FieldDef_l42_9;
  wire                when_FieldDef_l43_9;
  wire                when_FieldDef_l44_9;
  wire                when_FieldDef_l45_9;
  wire       [1:0]    _zz_when_FieldDef_l43_10;
  wire                when_FieldDef_l42_10;
  wire                when_FieldDef_l43_10;
  wire                when_FieldDef_l44_10;
  wire                when_FieldDef_l45_10;
  wire       [1:0]    _zz_when_FieldDef_l26_6;
  wire                when_FieldDef_l25_6;
  wire                when_FieldDef_l26_6;
  wire                when_FieldDef_l27_6;
  wire                when_FieldDef_l28_6;
  wire       [1:0]    _zz_when_FieldDef_l43_11;
  wire                when_FieldDef_l42_11;
  wire                when_FieldDef_l43_11;
  wire                when_FieldDef_l44_11;
  wire                when_FieldDef_l45_11;
  wire       [1:0]    _zz_when_FieldDef_l26_7;
  wire                when_FieldDef_l25_7;
  wire                when_FieldDef_l26_7;
  wire                when_FieldDef_l27_7;
  wire                when_FieldDef_l28_7;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz__zz_when_FieldDef_l43 = io_dmem_addr;
  assign _zz_when_FieldDef_l42 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26 = io_dmem_addr;
  assign _zz_when_FieldDef_l25 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_2 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_1 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_1 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_3 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_3 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_4 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_4 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_2 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_2 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_5 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_5 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_3 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_3 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_6 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_6 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_7 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_7 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_4 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_4 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_8 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_8 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_5 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_5 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_9 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_9 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_10 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_10 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_6 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_6 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l43_11 = io_dmem_addr;
  assign _zz_when_FieldDef_l42_11 = (io_dmem_addr >>> 2'd2);
  assign _zz__zz_when_FieldDef_l26_7 = io_dmem_addr;
  assign _zz_when_FieldDef_l25_7 = (io_dmem_addr >>> 2'd2);
  GpioDriver xgpio_u (
    .io_idatRd_0_0_enable  (xgpio_u_io_idatRd_0_0_enable       ), //i
    .io_idatRd_0_0_data    (xgpio_u_io_idatRd_0_0_data[7:0]    ), //o
    .io_idatRd_0_1_enable  (xgpio_u_io_idatRd_0_1_enable       ), //i
    .io_idatRd_0_1_data    (xgpio_u_io_idatRd_0_1_data[7:0]    ), //o
    .io_idatRd_0_2_enable  (xgpio_u_io_idatRd_0_2_enable       ), //i
    .io_idatRd_0_2_data    (xgpio_u_io_idatRd_0_2_data[7:0]    ), //o
    .io_idatRd_0_3_enable  (xgpio_u_io_idatRd_0_3_enable       ), //i
    .io_idatRd_0_3_data    (xgpio_u_io_idatRd_0_3_data[7:0]    ), //o
    .io_oenaRd_0_0_enable  (xgpio_u_io_oenaRd_0_0_enable       ), //i
    .io_oenaRd_0_0_data    (xgpio_u_io_oenaRd_0_0_data[7:0]    ), //o
    .io_oenaRd_0_1_enable  (xgpio_u_io_oenaRd_0_1_enable       ), //i
    .io_oenaRd_0_1_data    (xgpio_u_io_oenaRd_0_1_data[7:0]    ), //o
    .io_oenaRd_0_2_enable  (xgpio_u_io_oenaRd_0_2_enable       ), //i
    .io_oenaRd_0_2_data    (xgpio_u_io_oenaRd_0_2_data[7:0]    ), //o
    .io_oenaRd_0_3_enable  (xgpio_u_io_oenaRd_0_3_enable       ), //i
    .io_oenaRd_0_3_data    (xgpio_u_io_oenaRd_0_3_data[7:0]    ), //o
    .io_oenaWr_0_0_enable  (xgpio_u_io_oenaWr_0_0_enable       ), //i
    .io_oenaWr_0_0_data    (xgpio_u_io_oenaWr_0_0_data[7:0]    ), //i
    .io_oenaWr_0_1_enable  (xgpio_u_io_oenaWr_0_1_enable       ), //i
    .io_oenaWr_0_1_data    (xgpio_u_io_oenaWr_0_1_data[7:0]    ), //i
    .io_oenaWr_0_2_enable  (xgpio_u_io_oenaWr_0_2_enable       ), //i
    .io_oenaWr_0_2_data    (xgpio_u_io_oenaWr_0_2_data[7:0]    ), //i
    .io_oenaWr_0_3_enable  (xgpio_u_io_oenaWr_0_3_enable       ), //i
    .io_oenaWr_0_3_data    (xgpio_u_io_oenaWr_0_3_data[7:0]    ), //i
    .io_odatRd_0_0_enable  (xgpio_u_io_odatRd_0_0_enable       ), //i
    .io_odatRd_0_0_data    (xgpio_u_io_odatRd_0_0_data[7:0]    ), //o
    .io_odatRd_0_1_enable  (xgpio_u_io_odatRd_0_1_enable       ), //i
    .io_odatRd_0_1_data    (xgpio_u_io_odatRd_0_1_data[7:0]    ), //o
    .io_odatRd_0_2_enable  (xgpio_u_io_odatRd_0_2_enable       ), //i
    .io_odatRd_0_2_data    (xgpio_u_io_odatRd_0_2_data[7:0]    ), //o
    .io_odatRd_0_3_enable  (xgpio_u_io_odatRd_0_3_enable       ), //i
    .io_odatRd_0_3_data    (xgpio_u_io_odatRd_0_3_data[7:0]    ), //o
    .io_odatWr_0_0_enable  (xgpio_u_io_odatWr_0_0_enable       ), //i
    .io_odatWr_0_0_data    (xgpio_u_io_odatWr_0_0_data[7:0]    ), //i
    .io_odatWr_0_1_enable  (xgpio_u_io_odatWr_0_1_enable       ), //i
    .io_odatWr_0_1_data    (xgpio_u_io_odatWr_0_1_data[7:0]    ), //i
    .io_odatWr_0_2_enable  (xgpio_u_io_odatWr_0_2_enable       ), //i
    .io_odatWr_0_2_data    (xgpio_u_io_odatWr_0_2_data[7:0]    ), //i
    .io_odatWr_0_3_enable  (xgpio_u_io_odatWr_0_3_enable       ), //i
    .io_odatWr_0_3_data    (xgpio_u_io_odatWr_0_3_data[7:0]    ), //i
    .io_gpio_0_read        (io_gpio_0_read[31:0]               ), //i
    .io_gpio_0_write       (xgpio_u_io_gpio_0_write[31:0]      ), //o
    .io_gpio_0_writeEnable (xgpio_u_io_gpio_0_writeEnable[31:0]), //o
    .clkCore               (clkCore                            ), //i
    .rstSoc                (rstSoc                             )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  always @(*) begin
    xgpio_u_io_idatRd_0_0_enable = 1'b0;
    if(when_FieldDef_l42) begin
      if(when_FieldDef_l43) begin
        xgpio_u_io_idatRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l44) begin
        xgpio_u_io_idatRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l45) begin
        xgpio_u_io_idatRd_0_0_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43 = _zz__zz_when_FieldDef_l43[1 : 0];
  assign when_FieldDef_l42 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42 == 30'h10000000));
  assign when_FieldDef_l43 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l44 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43 == 2'b00));
  assign when_FieldDef_l45 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43 == 2'b00));
  always @(*) begin
    xgpio_u_io_oenaRd_0_0_enable = 1'b0;
    if(when_FieldDef_l42_1) begin
      if(when_FieldDef_l43_1) begin
        xgpio_u_io_oenaRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l44_1) begin
        xgpio_u_io_oenaRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l45_1) begin
        xgpio_u_io_oenaRd_0_0_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_1 = _zz__zz_when_FieldDef_l43_1[1 : 0];
  assign when_FieldDef_l42_1 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_1 == 30'h10000001));
  assign when_FieldDef_l43_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  assign when_FieldDef_l44_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  assign when_FieldDef_l45_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_1 == 2'b00));
  always @(*) begin
    xgpio_u_io_oenaWr_0_0_data = 8'h0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xgpio_u_io_oenaWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l27) begin
        xgpio_u_io_oenaWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28) begin
        xgpio_u_io_oenaWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_oenaWr_0_0_enable = 1'b0;
    if(when_FieldDef_l25) begin
      if(when_FieldDef_l26) begin
        xgpio_u_io_oenaWr_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l27) begin
        xgpio_u_io_oenaWr_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l28) begin
        xgpio_u_io_oenaWr_0_0_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26 = _zz__zz_when_FieldDef_l26[1 : 0];
  assign when_FieldDef_l25 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25 == 30'h10000001));
  assign when_FieldDef_l26 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l27 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26 == 2'b00));
  assign when_FieldDef_l28 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26 == 2'b00));
  always @(*) begin
    xgpio_u_io_odatRd_0_0_enable = 1'b0;
    if(when_FieldDef_l42_2) begin
      if(when_FieldDef_l43_2) begin
        xgpio_u_io_odatRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l44_2) begin
        xgpio_u_io_odatRd_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l45_2) begin
        xgpio_u_io_odatRd_0_0_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_2 = _zz__zz_when_FieldDef_l43_2[1 : 0];
  assign when_FieldDef_l42_2 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_2 == 30'h10000002));
  assign when_FieldDef_l43_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l44_2 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  assign when_FieldDef_l45_2 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_2 == 2'b00));
  always @(*) begin
    xgpio_u_io_odatWr_0_0_data = 8'h0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xgpio_u_io_odatWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l27_1) begin
        xgpio_u_io_odatWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28_1) begin
        xgpio_u_io_odatWr_0_0_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_odatWr_0_0_enable = 1'b0;
    if(when_FieldDef_l25_1) begin
      if(when_FieldDef_l26_1) begin
        xgpio_u_io_odatWr_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l27_1) begin
        xgpio_u_io_odatWr_0_0_enable = 1'b1;
      end
      if(when_FieldDef_l28_1) begin
        xgpio_u_io_odatWr_0_0_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_1 = _zz__zz_when_FieldDef_l26_1[1 : 0];
  assign when_FieldDef_l25_1 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_1 == 30'h10000002));
  assign when_FieldDef_l26_1 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l27_1 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  assign when_FieldDef_l28_1 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_1 == 2'b00));
  always @(*) begin
    xgpio_u_io_idatRd_0_1_enable = 1'b0;
    if(when_FieldDef_l42_3) begin
      if(when_FieldDef_l43_3) begin
        xgpio_u_io_idatRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l44_3) begin
        xgpio_u_io_idatRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l45_3) begin
        xgpio_u_io_idatRd_0_1_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_3 = _zz__zz_when_FieldDef_l43_3[1 : 0];
  assign when_FieldDef_l42_3 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_3 == 30'h10000000));
  assign when_FieldDef_l43_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l44_3 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_3 == 2'b00));
  assign when_FieldDef_l45_3 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_3 == 2'b01));
  always @(*) begin
    xgpio_u_io_oenaRd_0_1_enable = 1'b0;
    if(when_FieldDef_l42_4) begin
      if(when_FieldDef_l43_4) begin
        xgpio_u_io_oenaRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l44_4) begin
        xgpio_u_io_oenaRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l45_4) begin
        xgpio_u_io_oenaRd_0_1_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_4 = _zz__zz_when_FieldDef_l43_4[1 : 0];
  assign when_FieldDef_l42_4 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_4 == 30'h10000001));
  assign when_FieldDef_l43_4 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_4 == 2'b00));
  assign when_FieldDef_l44_4 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_4 == 2'b00));
  assign when_FieldDef_l45_4 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_4 == 2'b01));
  always @(*) begin
    xgpio_u_io_oenaWr_0_1_data = 8'h0;
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xgpio_u_io_oenaWr_0_1_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l27_2) begin
        xgpio_u_io_oenaWr_0_1_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l28_2) begin
        xgpio_u_io_oenaWr_0_1_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_oenaWr_0_1_enable = 1'b0;
    if(when_FieldDef_l25_2) begin
      if(when_FieldDef_l26_2) begin
        xgpio_u_io_oenaWr_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l27_2) begin
        xgpio_u_io_oenaWr_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l28_2) begin
        xgpio_u_io_oenaWr_0_1_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_2 = _zz__zz_when_FieldDef_l26_2[1 : 0];
  assign when_FieldDef_l25_2 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_2 == 30'h10000001));
  assign when_FieldDef_l26_2 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_2 == 2'b00));
  assign when_FieldDef_l27_2 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_2 == 2'b00));
  assign when_FieldDef_l28_2 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_2 == 2'b01));
  always @(*) begin
    xgpio_u_io_odatRd_0_1_enable = 1'b0;
    if(when_FieldDef_l42_5) begin
      if(when_FieldDef_l43_5) begin
        xgpio_u_io_odatRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l44_5) begin
        xgpio_u_io_odatRd_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l45_5) begin
        xgpio_u_io_odatRd_0_1_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_5 = _zz__zz_when_FieldDef_l43_5[1 : 0];
  assign when_FieldDef_l42_5 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_5 == 30'h10000002));
  assign when_FieldDef_l43_5 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_5 == 2'b00));
  assign when_FieldDef_l44_5 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_5 == 2'b00));
  assign when_FieldDef_l45_5 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_5 == 2'b01));
  always @(*) begin
    xgpio_u_io_odatWr_0_1_data = 8'h0;
    if(when_FieldDef_l25_3) begin
      if(when_FieldDef_l26_3) begin
        xgpio_u_io_odatWr_0_1_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l27_3) begin
        xgpio_u_io_odatWr_0_1_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l28_3) begin
        xgpio_u_io_odatWr_0_1_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_odatWr_0_1_enable = 1'b0;
    if(when_FieldDef_l25_3) begin
      if(when_FieldDef_l26_3) begin
        xgpio_u_io_odatWr_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l27_3) begin
        xgpio_u_io_odatWr_0_1_enable = 1'b1;
      end
      if(when_FieldDef_l28_3) begin
        xgpio_u_io_odatWr_0_1_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_3 = _zz__zz_when_FieldDef_l26_3[1 : 0];
  assign when_FieldDef_l25_3 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_3 == 30'h10000002));
  assign when_FieldDef_l26_3 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_3 == 2'b00));
  assign when_FieldDef_l27_3 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_3 == 2'b00));
  assign when_FieldDef_l28_3 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_3 == 2'b01));
  always @(*) begin
    xgpio_u_io_idatRd_0_2_enable = 1'b0;
    if(when_FieldDef_l42_6) begin
      if(when_FieldDef_l43_6) begin
        xgpio_u_io_idatRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l44_6) begin
        xgpio_u_io_idatRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l45_6) begin
        xgpio_u_io_idatRd_0_2_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_6 = _zz__zz_when_FieldDef_l43_6[1 : 0];
  assign when_FieldDef_l42_6 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_6 == 30'h10000000));
  assign when_FieldDef_l43_6 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_6 == 2'b00));
  assign when_FieldDef_l44_6 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_6 == 2'b10));
  assign when_FieldDef_l45_6 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_6 == 2'b10));
  always @(*) begin
    xgpio_u_io_oenaRd_0_2_enable = 1'b0;
    if(when_FieldDef_l42_7) begin
      if(when_FieldDef_l43_7) begin
        xgpio_u_io_oenaRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l44_7) begin
        xgpio_u_io_oenaRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l45_7) begin
        xgpio_u_io_oenaRd_0_2_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_7 = _zz__zz_when_FieldDef_l43_7[1 : 0];
  assign when_FieldDef_l42_7 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_7 == 30'h10000001));
  assign when_FieldDef_l43_7 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_7 == 2'b00));
  assign when_FieldDef_l44_7 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_7 == 2'b10));
  assign when_FieldDef_l45_7 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_7 == 2'b10));
  always @(*) begin
    xgpio_u_io_oenaWr_0_2_data = 8'h0;
    if(when_FieldDef_l25_4) begin
      if(when_FieldDef_l26_4) begin
        xgpio_u_io_oenaWr_0_2_data = io_dmem_dataWr[23 : 16];
      end
      if(when_FieldDef_l27_4) begin
        xgpio_u_io_oenaWr_0_2_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28_4) begin
        xgpio_u_io_oenaWr_0_2_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_oenaWr_0_2_enable = 1'b0;
    if(when_FieldDef_l25_4) begin
      if(when_FieldDef_l26_4) begin
        xgpio_u_io_oenaWr_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l27_4) begin
        xgpio_u_io_oenaWr_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l28_4) begin
        xgpio_u_io_oenaWr_0_2_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_4 = _zz__zz_when_FieldDef_l26_4[1 : 0];
  assign when_FieldDef_l25_4 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_4 == 30'h10000001));
  assign when_FieldDef_l26_4 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_4 == 2'b00));
  assign when_FieldDef_l27_4 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_4 == 2'b10));
  assign when_FieldDef_l28_4 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_4 == 2'b10));
  always @(*) begin
    xgpio_u_io_odatRd_0_2_enable = 1'b0;
    if(when_FieldDef_l42_8) begin
      if(when_FieldDef_l43_8) begin
        xgpio_u_io_odatRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l44_8) begin
        xgpio_u_io_odatRd_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l45_8) begin
        xgpio_u_io_odatRd_0_2_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_8 = _zz__zz_when_FieldDef_l43_8[1 : 0];
  assign when_FieldDef_l42_8 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_8 == 30'h10000002));
  assign when_FieldDef_l43_8 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_8 == 2'b00));
  assign when_FieldDef_l44_8 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_8 == 2'b10));
  assign when_FieldDef_l45_8 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_8 == 2'b10));
  always @(*) begin
    xgpio_u_io_odatWr_0_2_data = 8'h0;
    if(when_FieldDef_l25_5) begin
      if(when_FieldDef_l26_5) begin
        xgpio_u_io_odatWr_0_2_data = io_dmem_dataWr[23 : 16];
      end
      if(when_FieldDef_l27_5) begin
        xgpio_u_io_odatWr_0_2_data = io_dmem_dataWr[7 : 0];
      end
      if(when_FieldDef_l28_5) begin
        xgpio_u_io_odatWr_0_2_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_odatWr_0_2_enable = 1'b0;
    if(when_FieldDef_l25_5) begin
      if(when_FieldDef_l26_5) begin
        xgpio_u_io_odatWr_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l27_5) begin
        xgpio_u_io_odatWr_0_2_enable = 1'b1;
      end
      if(when_FieldDef_l28_5) begin
        xgpio_u_io_odatWr_0_2_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_5 = _zz__zz_when_FieldDef_l26_5[1 : 0];
  assign when_FieldDef_l25_5 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_5 == 30'h10000002));
  assign when_FieldDef_l26_5 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_5 == 2'b00));
  assign when_FieldDef_l27_5 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_5 == 2'b10));
  assign when_FieldDef_l28_5 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_5 == 2'b10));
  always @(*) begin
    xgpio_u_io_idatRd_0_3_enable = 1'b0;
    if(when_FieldDef_l42_9) begin
      if(when_FieldDef_l43_9) begin
        xgpio_u_io_idatRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l44_9) begin
        xgpio_u_io_idatRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l45_9) begin
        xgpio_u_io_idatRd_0_3_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_9 = _zz__zz_when_FieldDef_l43_9[1 : 0];
  assign when_FieldDef_l42_9 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_9 == 30'h10000000));
  assign when_FieldDef_l43_9 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_9 == 2'b00));
  assign when_FieldDef_l44_9 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_9 == 2'b10));
  assign when_FieldDef_l45_9 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_9 == 2'b11));
  always @(*) begin
    xgpio_u_io_oenaRd_0_3_enable = 1'b0;
    if(when_FieldDef_l42_10) begin
      if(when_FieldDef_l43_10) begin
        xgpio_u_io_oenaRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l44_10) begin
        xgpio_u_io_oenaRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l45_10) begin
        xgpio_u_io_oenaRd_0_3_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_10 = _zz__zz_when_FieldDef_l43_10[1 : 0];
  assign when_FieldDef_l42_10 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_10 == 30'h10000001));
  assign when_FieldDef_l43_10 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_10 == 2'b00));
  assign when_FieldDef_l44_10 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_10 == 2'b10));
  assign when_FieldDef_l45_10 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_10 == 2'b11));
  always @(*) begin
    xgpio_u_io_oenaWr_0_3_data = 8'h0;
    if(when_FieldDef_l25_6) begin
      if(when_FieldDef_l26_6) begin
        xgpio_u_io_oenaWr_0_3_data = io_dmem_dataWr[31 : 24];
      end
      if(when_FieldDef_l27_6) begin
        xgpio_u_io_oenaWr_0_3_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l28_6) begin
        xgpio_u_io_oenaWr_0_3_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_oenaWr_0_3_enable = 1'b0;
    if(when_FieldDef_l25_6) begin
      if(when_FieldDef_l26_6) begin
        xgpio_u_io_oenaWr_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l27_6) begin
        xgpio_u_io_oenaWr_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l28_6) begin
        xgpio_u_io_oenaWr_0_3_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_6 = _zz__zz_when_FieldDef_l26_6[1 : 0];
  assign when_FieldDef_l25_6 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_6 == 30'h10000001));
  assign when_FieldDef_l26_6 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_6 == 2'b00));
  assign when_FieldDef_l27_6 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_6 == 2'b10));
  assign when_FieldDef_l28_6 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_6 == 2'b11));
  always @(*) begin
    xgpio_u_io_odatRd_0_3_enable = 1'b0;
    if(when_FieldDef_l42_11) begin
      if(when_FieldDef_l43_11) begin
        xgpio_u_io_odatRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l44_11) begin
        xgpio_u_io_odatRd_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l45_11) begin
        xgpio_u_io_odatRd_0_3_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l43_11 = _zz__zz_when_FieldDef_l43_11[1 : 0];
  assign when_FieldDef_l42_11 = ((io_dmem_select && (! io_dmem_enableWr)) && (_zz_when_FieldDef_l42_11 == 30'h10000002));
  assign when_FieldDef_l43_11 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l43_11 == 2'b00));
  assign when_FieldDef_l44_11 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l43_11 == 2'b10));
  assign when_FieldDef_l45_11 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l43_11 == 2'b11));
  always @(*) begin
    xgpio_u_io_odatWr_0_3_data = 8'h0;
    if(when_FieldDef_l25_7) begin
      if(when_FieldDef_l26_7) begin
        xgpio_u_io_odatWr_0_3_data = io_dmem_dataWr[31 : 24];
      end
      if(when_FieldDef_l27_7) begin
        xgpio_u_io_odatWr_0_3_data = io_dmem_dataWr[15 : 8];
      end
      if(when_FieldDef_l28_7) begin
        xgpio_u_io_odatWr_0_3_data = io_dmem_dataWr[7 : 0];
      end
    end
  end

  always @(*) begin
    xgpio_u_io_odatWr_0_3_enable = 1'b0;
    if(when_FieldDef_l25_7) begin
      if(when_FieldDef_l26_7) begin
        xgpio_u_io_odatWr_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l27_7) begin
        xgpio_u_io_odatWr_0_3_enable = 1'b1;
      end
      if(when_FieldDef_l28_7) begin
        xgpio_u_io_odatWr_0_3_enable = 1'b1;
      end
    end
  end

  assign _zz_when_FieldDef_l26_7 = _zz__zz_when_FieldDef_l26_7[1 : 0];
  assign when_FieldDef_l25_7 = ((io_dmem_select && io_dmem_enableWr) && (_zz_when_FieldDef_l25_7 == 30'h10000002));
  assign when_FieldDef_l26_7 = ((io_dmem_length == BusLength_word_) && (_zz_when_FieldDef_l26_7 == 2'b00));
  assign when_FieldDef_l27_7 = ((io_dmem_length == BusLength_half_) && (_zz_when_FieldDef_l26_7 == 2'b10));
  assign when_FieldDef_l28_7 = ((io_dmem_length == BusLength_byte_) && (_zz_when_FieldDef_l26_7 == 2'b11));
  assign io_gpio_0_write = xgpio_u_io_gpio_0_write;
  assign io_gpio_0_writeEnable = xgpio_u_io_gpio_0_writeEnable;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      io_dmem_dataRd <= 32'h0;
    end else begin
      io_dmem_dataRd <= 32'h0;
      if(when_FieldDef_l42) begin
        if(when_FieldDef_l43) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_0_data;
        end
        if(when_FieldDef_l44) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_0_data;
        end
        if(when_FieldDef_l45) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_0_data;
        end
      end
      if(when_FieldDef_l42_1) begin
        if(when_FieldDef_l43_1) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_0_data;
        end
        if(when_FieldDef_l44_1) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_0_data;
        end
        if(when_FieldDef_l45_1) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_0_data;
        end
      end
      if(when_FieldDef_l42_2) begin
        if(when_FieldDef_l43_2) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_0_data;
        end
        if(when_FieldDef_l44_2) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_0_data;
        end
        if(when_FieldDef_l45_2) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_0_data;
        end
      end
      if(when_FieldDef_l42_3) begin
        if(when_FieldDef_l43_3) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_idatRd_0_1_data;
        end
        if(when_FieldDef_l44_3) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_idatRd_0_1_data;
        end
        if(when_FieldDef_l45_3) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_1_data;
        end
      end
      if(when_FieldDef_l42_4) begin
        if(when_FieldDef_l43_4) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_oenaRd_0_1_data;
        end
        if(when_FieldDef_l44_4) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_oenaRd_0_1_data;
        end
        if(when_FieldDef_l45_4) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_1_data;
        end
      end
      if(when_FieldDef_l42_5) begin
        if(when_FieldDef_l43_5) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_odatRd_0_1_data;
        end
        if(when_FieldDef_l44_5) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_odatRd_0_1_data;
        end
        if(when_FieldDef_l45_5) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_1_data;
        end
      end
      if(when_FieldDef_l42_6) begin
        if(when_FieldDef_l43_6) begin
          io_dmem_dataRd[23 : 16] <= xgpio_u_io_idatRd_0_2_data;
        end
        if(when_FieldDef_l44_6) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_2_data;
        end
        if(when_FieldDef_l45_6) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_2_data;
        end
      end
      if(when_FieldDef_l42_7) begin
        if(when_FieldDef_l43_7) begin
          io_dmem_dataRd[23 : 16] <= xgpio_u_io_oenaRd_0_2_data;
        end
        if(when_FieldDef_l44_7) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_2_data;
        end
        if(when_FieldDef_l45_7) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_2_data;
        end
      end
      if(when_FieldDef_l42_8) begin
        if(when_FieldDef_l43_8) begin
          io_dmem_dataRd[23 : 16] <= xgpio_u_io_odatRd_0_2_data;
        end
        if(when_FieldDef_l44_8) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_2_data;
        end
        if(when_FieldDef_l45_8) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_2_data;
        end
      end
      if(when_FieldDef_l42_9) begin
        if(when_FieldDef_l43_9) begin
          io_dmem_dataRd[31 : 24] <= xgpio_u_io_idatRd_0_3_data;
        end
        if(when_FieldDef_l44_9) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_idatRd_0_3_data;
        end
        if(when_FieldDef_l45_9) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_idatRd_0_3_data;
        end
      end
      if(when_FieldDef_l42_10) begin
        if(when_FieldDef_l43_10) begin
          io_dmem_dataRd[31 : 24] <= xgpio_u_io_oenaRd_0_3_data;
        end
        if(when_FieldDef_l44_10) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_oenaRd_0_3_data;
        end
        if(when_FieldDef_l45_10) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_oenaRd_0_3_data;
        end
      end
      if(when_FieldDef_l42_11) begin
        if(when_FieldDef_l43_11) begin
          io_dmem_dataRd[31 : 24] <= xgpio_u_io_odatRd_0_3_data;
        end
        if(when_FieldDef_l44_11) begin
          io_dmem_dataRd[15 : 8] <= xgpio_u_io_odatRd_0_3_data;
        end
        if(when_FieldDef_l45_11) begin
          io_dmem_dataRd[7 : 0] <= xgpio_u_io_odatRd_0_3_data;
        end
      end
    end
  end


endmodule

module Ram (
  input  wire [31:0]   io_dmem_addr,
  output wire [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  wire       [10:0]   core_u_io_mcmd_addr;
  wire       [31:0]   core_u_io_mcmd_dataRd;
  wire       [29:0]   _zz_io_mcmd_addr;
  wire       [31:0]   _zz_io_mcmd_addr_1;
  wire       [31:0]   _zz_switch_PortDmem_l64;
  wire       [15:0]   _zz__zz_io_dmem_dataRd;
  wire       [15:0]   _zz__zz_io_dmem_dataRd_1;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_2;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_3;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_4;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_5;
  wire       [1:0]    switch_PortDmem_l64;
  reg        [3:0]    _zz_io_mcmd_mask;
  wire                when_PortDmem_l62;
  wire                when_PortDmem_l68;
  wire                when_PortDmem_l75;
  reg        [31:0]   _zz_io_mcmd_dataWr;
  reg        [3:0]    core_u_io_mcmd_mask_regNext;
  reg        [31:0]   _zz_io_dmem_dataRd;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz_io_mcmd_addr = (_zz_io_mcmd_addr_1 >>> 2'd2);
  assign _zz_io_mcmd_addr_1 = (io_dmem_addr - 32'h20000000);
  assign _zz_switch_PortDmem_l64 = (io_dmem_addr - 32'h20000000);
  assign _zz__zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[15 : 0];
  assign _zz__zz_io_dmem_dataRd_1 = core_u_io_mcmd_dataRd[31 : 16];
  assign _zz__zz_io_dmem_dataRd_2 = core_u_io_mcmd_dataRd[7 : 0];
  assign _zz__zz_io_dmem_dataRd_3 = core_u_io_mcmd_dataRd[15 : 8];
  assign _zz__zz_io_dmem_dataRd_4 = core_u_io_mcmd_dataRd[23 : 16];
  assign _zz__zz_io_dmem_dataRd_5 = core_u_io_mcmd_dataRd[31 : 24];
  MemWrapper core_u (
    .io_mcmd_addr   (core_u_io_mcmd_addr[10:0]  ), //i
    .io_mcmd_enable (io_dmem_select             ), //i
    .io_mcmd_write  (io_dmem_enableWr           ), //i
    .io_mcmd_mask   (_zz_io_mcmd_mask[3:0]      ), //i
    .io_mcmd_dataWr (_zz_io_mcmd_dataWr[31:0]   ), //i
    .io_mcmd_dataRd (core_u_io_mcmd_dataRd[31:0]), //o
    .clkCore        (clkCore                    )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  assign core_u_io_mcmd_addr = _zz_io_mcmd_addr[10:0];
  assign switch_PortDmem_l64 = _zz_switch_PortDmem_l64[1 : 0];
  always @(*) begin
    _zz_io_mcmd_mask = 4'b0000;
    if(when_PortDmem_l62) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b1111;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l68) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0011;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b1100;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l75) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0001;
        end
        2'b01 : begin
          _zz_io_mcmd_mask = 4'b0010;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b0100;
        end
        default : begin
          _zz_io_mcmd_mask = 4'b1000;
        end
      endcase
    end
  end

  assign when_PortDmem_l62 = (io_dmem_length == BusLength_word_);
  assign when_PortDmem_l68 = (io_dmem_length == BusLength_half_);
  assign when_PortDmem_l75 = (io_dmem_length == BusLength_byte_);
  always @(*) begin
    _zz_io_mcmd_dataWr = 32'h0;
    case(_zz_io_mcmd_mask)
      4'b1111 : begin
        _zz_io_mcmd_dataWr[31 : 0] = io_dmem_dataWr[31 : 0];
      end
      4'b0011 : begin
        _zz_io_mcmd_dataWr[15 : 0] = io_dmem_dataWr[15 : 0];
      end
      4'b1100 : begin
        _zz_io_mcmd_dataWr[31 : 16] = io_dmem_dataWr[15 : 0];
      end
      4'b0001 : begin
        _zz_io_mcmd_dataWr[7 : 0] = io_dmem_dataWr[7 : 0];
      end
      4'b0010 : begin
        _zz_io_mcmd_dataWr[15 : 8] = io_dmem_dataWr[7 : 0];
      end
      4'b0100 : begin
        _zz_io_mcmd_dataWr[23 : 16] = io_dmem_dataWr[7 : 0];
      end
      4'b1000 : begin
        _zz_io_mcmd_dataWr[31 : 24] = io_dmem_dataWr[7 : 0];
      end
      default : begin
        _zz_io_mcmd_dataWr = io_dmem_dataWr;
      end
    endcase
  end

  always @(*) begin
    _zz_io_dmem_dataRd = 32'h0;
    case(core_u_io_mcmd_mask_regNext)
      4'b1111 : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[31 : 0];
      end
      4'b0011 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd};
      end
      4'b1100 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd_1};
      end
      4'b0001 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_2};
      end
      4'b0010 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_3};
      end
      4'b0100 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_4};
      end
      4'b1000 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_5};
      end
      default : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd;
      end
    endcase
  end

  assign io_dmem_dataRd = _zz_io_dmem_dataRd;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      core_u_io_mcmd_mask_regNext <= 4'b0000;
    end else begin
      core_u_io_mcmd_mask_regNext <= _zz_io_mcmd_mask;
    end
  end


endmodule

module Rom (
  input  wire [31:0]   io_dmem_addr,
  output wire [31:0]   io_dmem_dataRd,
  input  wire [31:0]   io_dmem_dataWr,
  input  wire          io_dmem_enableWr,
  input  wire [1:0]    io_dmem_length,
  input  wire          io_dmem_select,
  input  wire [31:0]   io_imem_addr,
  output wire [31:0]   io_imem_dataRd,
  input  wire          io_imem_select,
  output wire          io_imem_failed,
  input  wire [31:0]   io_boot_addr,
  input  wire [31:0]   io_boot_dataWr,
  input  wire          io_boot_enableWr,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg        [10:0]   core_u_io_mcmd_addr;
  reg                 core_u_io_mcmd_enable;
  reg                 core_u_io_mcmd_write;
  reg        [3:0]    core_u_io_mcmd_mask;
  reg        [31:0]   core_u_io_mcmd_dataWr;
  wire       [31:0]   core_u_io_mcmd_dataRd;
  wire       [29:0]   _zz_io_mcmd_addr;
  wire       [31:0]   _zz_io_mcmd_addr_1;
  wire       [29:0]   _zz_io_mcmd_addr_2;
  wire       [31:0]   _zz_io_mcmd_addr_3;
  wire       [29:0]   _zz_io_mcmd_addr_4;
  wire       [31:0]   _zz_io_mcmd_addr_5;
  wire       [31:0]   _zz_switch_PortDmem_l64;
  wire       [15:0]   _zz__zz_io_dmem_dataRd;
  wire       [15:0]   _zz__zz_io_dmem_dataRd_1;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_2;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_3;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_4;
  wire       [7:0]    _zz__zz_io_dmem_dataRd_5;
  wire                grantedDmemCurr;
  wire                grantedImemCurr;
  wire       [1:0]    switch_PortDmem_l64;
  reg        [3:0]    _zz_io_mcmd_mask;
  wire                when_PortDmem_l62;
  wire                when_PortDmem_l68;
  wire                when_PortDmem_l75;
  reg        [31:0]   _zz_io_mcmd_dataWr;
  reg        [31:0]   conflicts;
  reg        [3:0]    core_u_io_mcmd_mask_regNext;
  reg        [31:0]   _zz_io_dmem_dataRd;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  assign _zz_io_mcmd_addr = (_zz_io_mcmd_addr_1 >>> 2'd2);
  assign _zz_io_mcmd_addr_1 = (io_imem_addr - 32'h0);
  assign _zz_io_mcmd_addr_2 = (_zz_io_mcmd_addr_3 >>> 2'd2);
  assign _zz_io_mcmd_addr_3 = (io_boot_addr - 32'h0);
  assign _zz_io_mcmd_addr_4 = (_zz_io_mcmd_addr_5 >>> 2'd2);
  assign _zz_io_mcmd_addr_5 = (io_dmem_addr - 32'h0);
  assign _zz_switch_PortDmem_l64 = (io_dmem_addr - 32'h0);
  assign _zz__zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[15 : 0];
  assign _zz__zz_io_dmem_dataRd_1 = core_u_io_mcmd_dataRd[31 : 16];
  assign _zz__zz_io_dmem_dataRd_2 = core_u_io_mcmd_dataRd[7 : 0];
  assign _zz__zz_io_dmem_dataRd_3 = core_u_io_mcmd_dataRd[15 : 8];
  assign _zz__zz_io_dmem_dataRd_4 = core_u_io_mcmd_dataRd[23 : 16];
  assign _zz__zz_io_dmem_dataRd_5 = core_u_io_mcmd_dataRd[31 : 24];
  MemWrapper core_u (
    .io_mcmd_addr   (core_u_io_mcmd_addr[10:0]  ), //i
    .io_mcmd_enable (core_u_io_mcmd_enable      ), //i
    .io_mcmd_write  (core_u_io_mcmd_write       ), //i
    .io_mcmd_mask   (core_u_io_mcmd_mask[3:0]   ), //i
    .io_mcmd_dataWr (core_u_io_mcmd_dataWr[31:0]), //i
    .io_mcmd_dataRd (core_u_io_mcmd_dataRd[31:0]), //o
    .clkCore        (clkCore                    )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  assign grantedDmemCurr = ((! io_boot_enableWr) && io_dmem_select);
  assign grantedImemCurr = (((! io_boot_enableWr) && (! io_dmem_select)) && io_imem_select);
  always @(*) begin
    core_u_io_mcmd_addr = _zz_io_mcmd_addr[10:0];
    if(io_boot_enableWr) begin
      core_u_io_mcmd_addr = _zz_io_mcmd_addr_2[10:0];
    end
    if(grantedDmemCurr) begin
      core_u_io_mcmd_addr = _zz_io_mcmd_addr_4[10:0];
    end
  end

  always @(*) begin
    core_u_io_mcmd_enable = io_imem_select;
    if(io_boot_enableWr) begin
      core_u_io_mcmd_enable = io_boot_enableWr;
    end
    if(grantedDmemCurr) begin
      core_u_io_mcmd_enable = io_dmem_select;
    end
  end

  always @(*) begin
    core_u_io_mcmd_write = 1'b0;
    if(io_boot_enableWr) begin
      core_u_io_mcmd_write = io_boot_enableWr;
    end
    if(grantedDmemCurr) begin
      core_u_io_mcmd_write = io_dmem_enableWr;
    end
  end

  always @(*) begin
    core_u_io_mcmd_mask = 4'b1111;
    if(io_boot_enableWr) begin
      core_u_io_mcmd_mask = 4'b1111;
    end
    if(grantedDmemCurr) begin
      core_u_io_mcmd_mask = _zz_io_mcmd_mask;
    end
  end

  always @(*) begin
    core_u_io_mcmd_dataWr = 32'h0;
    if(io_boot_enableWr) begin
      core_u_io_mcmd_dataWr = io_boot_dataWr;
    end
    if(grantedDmemCurr) begin
      core_u_io_mcmd_dataWr = _zz_io_mcmd_dataWr;
    end
  end

  assign switch_PortDmem_l64 = _zz_switch_PortDmem_l64[1 : 0];
  always @(*) begin
    _zz_io_mcmd_mask = 4'b0000;
    if(when_PortDmem_l62) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b1111;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l68) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0011;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b1100;
        end
        default : begin
        end
      endcase
    end
    if(when_PortDmem_l75) begin
      case(switch_PortDmem_l64)
        2'b00 : begin
          _zz_io_mcmd_mask = 4'b0001;
        end
        2'b01 : begin
          _zz_io_mcmd_mask = 4'b0010;
        end
        2'b10 : begin
          _zz_io_mcmd_mask = 4'b0100;
        end
        default : begin
          _zz_io_mcmd_mask = 4'b1000;
        end
      endcase
    end
  end

  assign when_PortDmem_l62 = (io_dmem_length == BusLength_word_);
  assign when_PortDmem_l68 = (io_dmem_length == BusLength_half_);
  assign when_PortDmem_l75 = (io_dmem_length == BusLength_byte_);
  always @(*) begin
    _zz_io_mcmd_dataWr = 32'h0;
    case(core_u_io_mcmd_mask)
      4'b1111 : begin
        _zz_io_mcmd_dataWr[31 : 0] = io_dmem_dataWr[31 : 0];
      end
      4'b0011 : begin
        _zz_io_mcmd_dataWr[15 : 0] = io_dmem_dataWr[15 : 0];
      end
      4'b1100 : begin
        _zz_io_mcmd_dataWr[31 : 16] = io_dmem_dataWr[15 : 0];
      end
      4'b0001 : begin
        _zz_io_mcmd_dataWr[7 : 0] = io_dmem_dataWr[7 : 0];
      end
      4'b0010 : begin
        _zz_io_mcmd_dataWr[15 : 8] = io_dmem_dataWr[7 : 0];
      end
      4'b0100 : begin
        _zz_io_mcmd_dataWr[23 : 16] = io_dmem_dataWr[7 : 0];
      end
      4'b1000 : begin
        _zz_io_mcmd_dataWr[31 : 24] = io_dmem_dataWr[7 : 0];
      end
      default : begin
        _zz_io_mcmd_dataWr = io_dmem_dataWr;
      end
    endcase
  end

  assign io_imem_failed = (io_imem_select && (! grantedImemCurr));
  assign io_imem_dataRd = core_u_io_mcmd_dataRd;
  always @(*) begin
    _zz_io_dmem_dataRd = 32'h0;
    case(core_u_io_mcmd_mask_regNext)
      4'b1111 : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd[31 : 0];
      end
      4'b0011 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd};
      end
      4'b1100 : begin
        _zz_io_dmem_dataRd = {16'd0, _zz__zz_io_dmem_dataRd_1};
      end
      4'b0001 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_2};
      end
      4'b0010 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_3};
      end
      4'b0100 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_4};
      end
      4'b1000 : begin
        _zz_io_dmem_dataRd = {24'd0, _zz__zz_io_dmem_dataRd_5};
      end
      default : begin
        _zz_io_dmem_dataRd = core_u_io_mcmd_dataRd;
      end
    endcase
  end

  assign io_dmem_dataRd = _zz_io_dmem_dataRd;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      conflicts <= 32'h0;
      core_u_io_mcmd_mask_regNext <= 4'b0000;
    end else begin
      if(io_imem_failed) begin
        conflicts <= (conflicts + 32'h00000001);
      end
      core_u_io_mcmd_mask_regNext <= core_u_io_mcmd_mask;
    end
  end


endmodule

module BusImem (
  input  wire [31:0]   io_piCore_addr,
  output reg  [31:0]   io_piCore_dataRd,
  input  wire          io_piCore_select,
  output reg           io_piCore_failed,
  output wire [31:0]   io_piRom_addr,
  input  wire [31:0]   io_piRom_dataRd,
  output wire          io_piRom_select,
  input  wire          io_piRom_failed,
  input  wire          clkCore,
  input  wire          rstSoc
);

  wire                selbusCurr_0;
  reg                 selbusLast_0;

  assign selbusCurr_0 = ((32'h0 <= io_piCore_addr) && (io_piCore_addr < 32'h00002000));
  always @(*) begin
    io_piCore_dataRd = 32'h0;
    if(selbusLast_0) begin
      io_piCore_dataRd = io_piRom_dataRd;
    end
  end

  always @(*) begin
    io_piCore_failed = 1'b0;
    if(selbusCurr_0) begin
      io_piCore_failed = io_piRom_failed;
    end
  end

  assign io_piRom_addr = io_piCore_addr;
  assign io_piRom_select = (io_piCore_select && selbusCurr_0);
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      selbusLast_0 <= 1'b0;
    end else begin
      selbusLast_0 <= selbusCurr_0;
    end
  end


endmodule

module BusDmem (
  input  wire [31:0]   io_pdCore_addr,
  output reg  [31:0]   io_pdCore_dataRd,
  input  wire [31:0]   io_pdCore_dataWr,
  input  wire          io_pdCore_enableWr,
  input  wire [1:0]    io_pdCore_length,
  input  wire          io_pdCore_select,
  output wire [31:0]   io_pdRom_addr,
  input  wire [31:0]   io_pdRom_dataRd,
  output wire [31:0]   io_pdRom_dataWr,
  output wire          io_pdRom_enableWr,
  output wire [1:0]    io_pdRom_length,
  output wire          io_pdRom_select,
  output wire [31:0]   io_pdRam_addr,
  input  wire [31:0]   io_pdRam_dataRd,
  output wire [31:0]   io_pdRam_dataWr,
  output wire          io_pdRam_enableWr,
  output wire [1:0]    io_pdRam_length,
  output wire          io_pdRam_select,
  output wire [31:0]   io_pdGpio_addr,
  input  wire [31:0]   io_pdGpio_dataRd,
  output wire [31:0]   io_pdGpio_dataWr,
  output wire          io_pdGpio_enableWr,
  output wire [1:0]    io_pdGpio_length,
  output wire          io_pdGpio_select,
  output wire [31:0]   io_pdUart_addr,
  input  wire [31:0]   io_pdUart_dataRd,
  output wire [31:0]   io_pdUart_dataWr,
  output wire          io_pdUart_enableWr,
  output wire [1:0]    io_pdUart_length,
  output wire          io_pdUart_select,
  output wire [31:0]   io_pdSpi_addr,
  input  wire [31:0]   io_pdSpi_dataRd,
  output wire [31:0]   io_pdSpi_dataWr,
  output wire          io_pdSpi_enableWr,
  output wire [1:0]    io_pdSpi_length,
  output wire          io_pdSpi_select,
  output wire [31:0]   io_pdTicker_addr,
  input  wire [31:0]   io_pdTicker_dataRd,
  output wire [31:0]   io_pdTicker_dataWr,
  output wire          io_pdTicker_enableWr,
  output wire [1:0]    io_pdTicker_length,
  output wire          io_pdTicker_select,
  output wire [31:0]   io_pdSreg_addr,
  input  wire [31:0]   io_pdSreg_dataRd,
  output wire [31:0]   io_pdSreg_dataWr,
  output wire          io_pdSreg_enableWr,
  output wire [1:0]    io_pdSreg_length,
  output wire          io_pdSreg_select,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  wire                selbusCurr_0;
  wire                selbusCurr_1;
  wire                selbusCurr_2;
  wire                selbusCurr_3;
  wire                selbusCurr_4;
  wire                selbusCurr_5;
  wire                selbusCurr_6;
  reg                 selbusLast_0;
  reg                 selbusLast_1;
  reg                 selbusLast_2;
  reg                 selbusLast_3;
  reg                 selbusLast_4;
  reg                 selbusLast_5;
  reg                 selbusLast_6;
  `ifndef SYNTHESIS
  reg [39:0] io_pdCore_length_string;
  reg [39:0] io_pdRom_length_string;
  reg [39:0] io_pdRam_length_string;
  reg [39:0] io_pdGpio_length_string;
  reg [39:0] io_pdUart_length_string;
  reg [39:0] io_pdSpi_length_string;
  reg [39:0] io_pdTicker_length_string;
  reg [39:0] io_pdSreg_length_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(io_pdCore_length)
      BusLength_byte_ : io_pdCore_length_string = "byte_";
      BusLength_half_ : io_pdCore_length_string = "half_";
      BusLength_word_ : io_pdCore_length_string = "word_";
      default : io_pdCore_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdRom_length)
      BusLength_byte_ : io_pdRom_length_string = "byte_";
      BusLength_half_ : io_pdRom_length_string = "half_";
      BusLength_word_ : io_pdRom_length_string = "word_";
      default : io_pdRom_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdRam_length)
      BusLength_byte_ : io_pdRam_length_string = "byte_";
      BusLength_half_ : io_pdRam_length_string = "half_";
      BusLength_word_ : io_pdRam_length_string = "word_";
      default : io_pdRam_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdGpio_length)
      BusLength_byte_ : io_pdGpio_length_string = "byte_";
      BusLength_half_ : io_pdGpio_length_string = "half_";
      BusLength_word_ : io_pdGpio_length_string = "word_";
      default : io_pdGpio_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdUart_length)
      BusLength_byte_ : io_pdUart_length_string = "byte_";
      BusLength_half_ : io_pdUart_length_string = "half_";
      BusLength_word_ : io_pdUart_length_string = "word_";
      default : io_pdUart_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdSpi_length)
      BusLength_byte_ : io_pdSpi_length_string = "byte_";
      BusLength_half_ : io_pdSpi_length_string = "half_";
      BusLength_word_ : io_pdSpi_length_string = "word_";
      default : io_pdSpi_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdTicker_length)
      BusLength_byte_ : io_pdTicker_length_string = "byte_";
      BusLength_half_ : io_pdTicker_length_string = "half_";
      BusLength_word_ : io_pdTicker_length_string = "word_";
      default : io_pdTicker_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pdSreg_length)
      BusLength_byte_ : io_pdSreg_length_string = "byte_";
      BusLength_half_ : io_pdSreg_length_string = "half_";
      BusLength_word_ : io_pdSreg_length_string = "word_";
      default : io_pdSreg_length_string = "?????";
    endcase
  end
  `endif

  assign selbusCurr_0 = ((32'h0 <= io_pdCore_addr) && (io_pdCore_addr < 32'h00002000));
  assign selbusCurr_1 = ((32'h20000000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h20002000));
  assign selbusCurr_2 = ((32'h40000000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h40000010));
  assign selbusCurr_3 = ((32'h40010000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h40010010));
  assign selbusCurr_4 = ((32'h40020000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h40020014));
  assign selbusCurr_5 = ((32'h40040000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h40040038));
  assign selbusCurr_6 = ((32'h60000000 <= io_pdCore_addr) && (io_pdCore_addr < 32'h6000000c));
  always @(*) begin
    io_pdCore_dataRd = 32'h0;
    if(selbusLast_0) begin
      io_pdCore_dataRd = io_pdRom_dataRd;
    end
    if(selbusLast_1) begin
      io_pdCore_dataRd = io_pdRam_dataRd;
    end
    if(selbusLast_2) begin
      io_pdCore_dataRd = io_pdGpio_dataRd;
    end
    if(selbusLast_3) begin
      io_pdCore_dataRd = io_pdUart_dataRd;
    end
    if(selbusLast_4) begin
      io_pdCore_dataRd = io_pdSpi_dataRd;
    end
    if(selbusLast_5) begin
      io_pdCore_dataRd = io_pdTicker_dataRd;
    end
    if(selbusLast_6) begin
      io_pdCore_dataRd = io_pdSreg_dataRd;
    end
  end

  assign io_pdRom_addr = io_pdCore_addr;
  assign io_pdRom_dataWr = io_pdCore_dataWr;
  assign io_pdRom_enableWr = io_pdCore_enableWr;
  assign io_pdRom_length = io_pdCore_length;
  assign io_pdRom_select = (io_pdCore_select && selbusCurr_0);
  assign io_pdRam_addr = io_pdCore_addr;
  assign io_pdRam_dataWr = io_pdCore_dataWr;
  assign io_pdRam_enableWr = io_pdCore_enableWr;
  assign io_pdRam_length = io_pdCore_length;
  assign io_pdRam_select = (io_pdCore_select && selbusCurr_1);
  assign io_pdGpio_addr = io_pdCore_addr;
  assign io_pdGpio_dataWr = io_pdCore_dataWr;
  assign io_pdGpio_enableWr = io_pdCore_enableWr;
  assign io_pdGpio_length = io_pdCore_length;
  assign io_pdGpio_select = (io_pdCore_select && selbusCurr_2);
  assign io_pdUart_addr = io_pdCore_addr;
  assign io_pdUart_dataWr = io_pdCore_dataWr;
  assign io_pdUart_enableWr = io_pdCore_enableWr;
  assign io_pdUart_length = io_pdCore_length;
  assign io_pdUart_select = (io_pdCore_select && selbusCurr_3);
  assign io_pdSpi_addr = io_pdCore_addr;
  assign io_pdSpi_dataWr = io_pdCore_dataWr;
  assign io_pdSpi_enableWr = io_pdCore_enableWr;
  assign io_pdSpi_length = io_pdCore_length;
  assign io_pdSpi_select = (io_pdCore_select && selbusCurr_4);
  assign io_pdTicker_addr = io_pdCore_addr;
  assign io_pdTicker_dataWr = io_pdCore_dataWr;
  assign io_pdTicker_enableWr = io_pdCore_enableWr;
  assign io_pdTicker_length = io_pdCore_length;
  assign io_pdTicker_select = (io_pdCore_select && selbusCurr_5);
  assign io_pdSreg_addr = io_pdCore_addr;
  assign io_pdSreg_dataWr = io_pdCore_dataWr;
  assign io_pdSreg_enableWr = io_pdCore_enableWr;
  assign io_pdSreg_length = io_pdCore_length;
  assign io_pdSreg_select = (io_pdCore_select && selbusCurr_6);
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      selbusLast_0 <= 1'b0;
      selbusLast_1 <= 1'b0;
      selbusLast_2 <= 1'b0;
      selbusLast_3 <= 1'b0;
      selbusLast_4 <= 1'b0;
      selbusLast_5 <= 1'b0;
      selbusLast_6 <= 1'b0;
    end else begin
      selbusLast_0 <= selbusCurr_0;
      selbusLast_1 <= selbusCurr_1;
      selbusLast_2 <= selbusCurr_2;
      selbusLast_3 <= selbusCurr_3;
      selbusLast_4 <= selbusCurr_4;
      selbusLast_5 <= selbusCurr_5;
      selbusLast_6 <= selbusCurr_6;
    end
  end


endmodule

module MohoCore (
  output wire [31:0]   io_imem_addr,
  input  wire [31:0]   io_imem_dataRd,
  output wire          io_imem_select,
  input  wire          io_imem_failed,
  output wire [31:0]   io_dmem_addr,
  input  wire [31:0]   io_dmem_dataRd,
  output wire [31:0]   io_dmem_dataWr,
  output wire          io_dmem_enableWr,
  output wire [1:0]    io_dmem_length,
  output wire          io_dmem_select,
  input  wire          rstCore,
  input  wire          clkCore
);
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;
  localparam PcSrc_pc4_ = 1'd0;
  localparam PcSrc_pctarget_ = 1'd1;
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;
  localparam BranchOp_pc4_ = 3'd0;
  localparam BranchOp_jump_ = 3'd1;
  localparam BranchOp_beq_ = 3'd2;
  localparam BranchOp_bne_ = 3'd3;
  localparam BranchOp_blt_ = 3'd4;
  localparam BranchOp_bge_ = 3'd5;
  localparam AluOp_add_ = 4'd0;
  localparam AluOp_sub_ = 4'd1;
  localparam AluOp_sll_ = 4'd2;
  localparam AluOp_srl_ = 4'd3;
  localparam AluOp_sra_ = 4'd4;
  localparam AluOp_xor_ = 4'd5;
  localparam AluOp_or_ = 4'd6;
  localparam AluOp_and_ = 4'd7;
  localparam AluOp_slt_ = 4'd8;
  localparam AluOp_sltu_ = 4'd9;
  localparam AluOp_srca_ = 4'd10;
  localparam AluOp_srcb_ = 4'd11;
  localparam IntSrcA_rs1_ = 1'd0;
  localparam IntSrcA_pc_ = 1'd1;
  localparam IntSrcB_rs2_ = 1'd0;
  localparam IntSrcB_imm_ = 1'd1;
  localparam PcAddSrcA_rs1_ = 1'd0;
  localparam PcAddSrcA_pc_ = 1'd1;
  localparam Forward_rf_ = 2'd0;
  localparam Forward_mem_ = 2'd1;
  localparam Forward_wb_ = 2'd2;

  wire       [31:0]   stageF_io_regFD_instr;
  wire       [31:0]   stageF_io_regFD_pc;
  wire       [31:0]   stageF_io_regFD_pcPlus4;
  wire       [31:0]   stageF_io_imem_addr;
  wire                stageF_io_imem_select;
  wire                stageF_io_fetchDeny;
  wire       [31:0]   stageD_io_regDE_pc;
  wire       [31:0]   stageD_io_regDE_pcPlus4;
  wire       [31:0]   stageD_io_regDE_rs1Data;
  wire       [31:0]   stageD_io_regDE_rs2Data;
  wire       [31:0]   stageD_io_regDE_immExt;
  wire       [4:0]    stageD_io_regDE_rs1;
  wire       [4:0]    stageD_io_regDE_rs2;
  wire       [4:0]    stageD_io_regDE_rd;
  wire                stageD_io_regDE_regWrite;
  wire       [1:0]    stageD_io_regDE_resultSrc;
  wire                stageD_io_regDE_memWrite;
  wire       [2:0]    stageD_io_regDE_memOp;
  wire       [2:0]    stageD_io_regDE_branchOp;
  wire       [3:0]    stageD_io_regDE_aluOp;
  wire       [0:0]    stageD_io_regDE_intSrcA;
  wire       [0:0]    stageD_io_regDE_intSrcB;
  wire       [0:0]    stageD_io_regDE_pcAddSrcA;
  wire       [4:0]    stageD_io_rs1D;
  wire       [4:0]    stageD_io_rs2D;
  wire       [31:0]   stageE_io_regEM_pcPlus4;
  wire       [31:0]   stageE_io_regEM_rs2Data;
  wire       [31:0]   stageE_io_regEM_aluResult;
  wire       [4:0]    stageE_io_regEM_rd;
  wire                stageE_io_regEM_regWrite;
  wire       [1:0]    stageE_io_regEM_resultSrc;
  wire                stageE_io_regEM_memWrite;
  wire       [2:0]    stageE_io_regEM_memOp;
  wire       [31:0]   stageE_io_pcTargetE;
  wire       [0:0]    stageE_io_pcSrcE;
  wire       [4:0]    stageE_io_rs1E;
  wire       [4:0]    stageE_io_rs2E;
  wire       [4:0]    stageE_io_rdE;
  wire                stageE_io_regWriteE;
  wire       [1:0]    stageE_io_resultSrcE;
  wire       [31:0]   stageM_io_regMW_pcPlus4;
  wire       [31:0]   stageM_io_regMW_aluResult;
  wire       [4:0]    stageM_io_regMW_rd;
  wire                stageM_io_regMW_regWrite;
  wire       [1:0]    stageM_io_regMW_resultSrc;
  wire       [2:0]    stageM_io_regMW_memOp;
  wire       [31:0]   stageM_io_resultM;
  wire       [4:0]    stageM_io_rdM;
  wire                stageM_io_regWriteM;
  wire       [31:0]   stageM_io_dmem_addr;
  wire       [31:0]   stageM_io_dmem_dataWr;
  wire                stageM_io_dmem_enableWr;
  wire       [1:0]    stageM_io_dmem_length;
  wire                stageM_io_dmem_select;
  wire       [4:0]    stageW_io_rdW;
  wire       [31:0]   stageW_io_rdDataW;
  wire                stageW_io_regWriteW;
  wire                hazard_u_io_stallFD;
  wire                hazard_u_io_flushFD;
  wire                hazard_u_io_flushDE;
  wire       [1:0]    hazard_u_io_forwardAE;
  wire       [1:0]    hazard_u_io_forwardBE;
  `ifndef SYNTHESIS
  reg [39:0] io_dmem_length_string;
  `endif


  StageFetch stageF (
    .io_regFD_instr   (stageF_io_regFD_instr[31:0]  ), //o
    .io_regFD_pc      (stageF_io_regFD_pc[31:0]     ), //o
    .io_regFD_pcPlus4 (stageF_io_regFD_pcPlus4[31:0]), //o
    .io_pcSrcE        (stageE_io_pcSrcE             ), //i
    .io_pcTargetE     (stageE_io_pcTargetE[31:0]    ), //i
    .io_stallFD       (hazard_u_io_stallFD          ), //i
    .io_flushFD       (hazard_u_io_flushFD          ), //i
    .io_imem_addr     (stageF_io_imem_addr[31:0]    ), //o
    .io_imem_dataRd   (io_imem_dataRd[31:0]         ), //i
    .io_imem_select   (stageF_io_imem_select        ), //o
    .io_imem_failed   (io_imem_failed               ), //i
    .io_fetchDeny     (stageF_io_fetchDeny          ), //o
    .clkCore          (clkCore                      ), //i
    .rstCore          (rstCore                      )  //i
  );
  StageDecode stageD (
    .io_regDE_pc        (stageD_io_regDE_pc[31:0]      ), //o
    .io_regDE_pcPlus4   (stageD_io_regDE_pcPlus4[31:0] ), //o
    .io_regDE_rs1Data   (stageD_io_regDE_rs1Data[31:0] ), //o
    .io_regDE_rs2Data   (stageD_io_regDE_rs2Data[31:0] ), //o
    .io_regDE_immExt    (stageD_io_regDE_immExt[31:0]  ), //o
    .io_regDE_rs1       (stageD_io_regDE_rs1[4:0]      ), //o
    .io_regDE_rs2       (stageD_io_regDE_rs2[4:0]      ), //o
    .io_regDE_rd        (stageD_io_regDE_rd[4:0]       ), //o
    .io_regDE_regWrite  (stageD_io_regDE_regWrite      ), //o
    .io_regDE_resultSrc (stageD_io_regDE_resultSrc[1:0]), //o
    .io_regDE_memWrite  (stageD_io_regDE_memWrite      ), //o
    .io_regDE_memOp     (stageD_io_regDE_memOp[2:0]    ), //o
    .io_regDE_branchOp  (stageD_io_regDE_branchOp[2:0] ), //o
    .io_regDE_aluOp     (stageD_io_regDE_aluOp[3:0]    ), //o
    .io_regDE_intSrcA   (stageD_io_regDE_intSrcA       ), //o
    .io_regDE_intSrcB   (stageD_io_regDE_intSrcB       ), //o
    .io_regDE_pcAddSrcA (stageD_io_regDE_pcAddSrcA     ), //o
    .io_regFD_instr     (stageF_io_regFD_instr[31:0]   ), //i
    .io_regFD_pc        (stageF_io_regFD_pc[31:0]      ), //i
    .io_regFD_pcPlus4   (stageF_io_regFD_pcPlus4[31:0] ), //i
    .io_rdDataW         (stageW_io_rdDataW[31:0]       ), //i
    .io_rdW             (stageW_io_rdW[4:0]            ), //i
    .io_regWriteW       (stageW_io_regWriteW           ), //i
    .io_rs1D            (stageD_io_rs1D[4:0]           ), //o
    .io_rs2D            (stageD_io_rs2D[4:0]           ), //o
    .io_flushDE         (hazard_u_io_flushDE           ), //i
    .clkCore            (clkCore                       ), //i
    .rstCore            (rstCore                       )  //i
  );
  StageExecute stageE (
    .io_regEM_pcPlus4   (stageE_io_regEM_pcPlus4[31:0]  ), //o
    .io_regEM_rs2Data   (stageE_io_regEM_rs2Data[31:0]  ), //o
    .io_regEM_aluResult (stageE_io_regEM_aluResult[31:0]), //o
    .io_regEM_rd        (stageE_io_regEM_rd[4:0]        ), //o
    .io_regEM_regWrite  (stageE_io_regEM_regWrite       ), //o
    .io_regEM_resultSrc (stageE_io_regEM_resultSrc[1:0] ), //o
    .io_regEM_memWrite  (stageE_io_regEM_memWrite       ), //o
    .io_regEM_memOp     (stageE_io_regEM_memOp[2:0]     ), //o
    .io_regDE_pc        (stageD_io_regDE_pc[31:0]       ), //i
    .io_regDE_pcPlus4   (stageD_io_regDE_pcPlus4[31:0]  ), //i
    .io_regDE_rs1Data   (stageD_io_regDE_rs1Data[31:0]  ), //i
    .io_regDE_rs2Data   (stageD_io_regDE_rs2Data[31:0]  ), //i
    .io_regDE_immExt    (stageD_io_regDE_immExt[31:0]   ), //i
    .io_regDE_rs1       (stageD_io_regDE_rs1[4:0]       ), //i
    .io_regDE_rs2       (stageD_io_regDE_rs2[4:0]       ), //i
    .io_regDE_rd        (stageD_io_regDE_rd[4:0]        ), //i
    .io_regDE_regWrite  (stageD_io_regDE_regWrite       ), //i
    .io_regDE_resultSrc (stageD_io_regDE_resultSrc[1:0] ), //i
    .io_regDE_memWrite  (stageD_io_regDE_memWrite       ), //i
    .io_regDE_memOp     (stageD_io_regDE_memOp[2:0]     ), //i
    .io_regDE_branchOp  (stageD_io_regDE_branchOp[2:0]  ), //i
    .io_regDE_aluOp     (stageD_io_regDE_aluOp[3:0]     ), //i
    .io_regDE_intSrcA   (stageD_io_regDE_intSrcA        ), //i
    .io_regDE_intSrcB   (stageD_io_regDE_intSrcB        ), //i
    .io_regDE_pcAddSrcA (stageD_io_regDE_pcAddSrcA      ), //i
    .io_rdDataW         (stageW_io_rdDataW[31:0]        ), //i
    .io_resultM         (stageM_io_resultM[31:0]        ), //i
    .io_pcTargetE       (stageE_io_pcTargetE[31:0]      ), //o
    .io_pcSrcE          (stageE_io_pcSrcE               ), //o
    .io_rs1E            (stageE_io_rs1E[4:0]            ), //o
    .io_rs2E            (stageE_io_rs2E[4:0]            ), //o
    .io_rdE             (stageE_io_rdE[4:0]             ), //o
    .io_regWriteE       (stageE_io_regWriteE            ), //o
    .io_resultSrcE      (stageE_io_resultSrcE[1:0]      ), //o
    .io_forwardAE       (hazard_u_io_forwardAE[1:0]     ), //i
    .io_forwardBE       (hazard_u_io_forwardBE[1:0]     ), //i
    .clkCore            (clkCore                        ), //i
    .rstCore            (rstCore                        )  //i
  );
  StageMemory stageM (
    .io_regMW_pcPlus4   (stageM_io_regMW_pcPlus4[31:0]  ), //o
    .io_regMW_aluResult (stageM_io_regMW_aluResult[31:0]), //o
    .io_regMW_rd        (stageM_io_regMW_rd[4:0]        ), //o
    .io_regMW_regWrite  (stageM_io_regMW_regWrite       ), //o
    .io_regMW_resultSrc (stageM_io_regMW_resultSrc[1:0] ), //o
    .io_regMW_memOp     (stageM_io_regMW_memOp[2:0]     ), //o
    .io_regEM_pcPlus4   (stageE_io_regEM_pcPlus4[31:0]  ), //i
    .io_regEM_rs2Data   (stageE_io_regEM_rs2Data[31:0]  ), //i
    .io_regEM_aluResult (stageE_io_regEM_aluResult[31:0]), //i
    .io_regEM_rd        (stageE_io_regEM_rd[4:0]        ), //i
    .io_regEM_regWrite  (stageE_io_regEM_regWrite       ), //i
    .io_regEM_resultSrc (stageE_io_regEM_resultSrc[1:0] ), //i
    .io_regEM_memWrite  (stageE_io_regEM_memWrite       ), //i
    .io_regEM_memOp     (stageE_io_regEM_memOp[2:0]     ), //i
    .io_resultM         (stageM_io_resultM[31:0]        ), //o
    .io_rdM             (stageM_io_rdM[4:0]             ), //o
    .io_regWriteM       (stageM_io_regWriteM            ), //o
    .io_dmem_addr       (stageM_io_dmem_addr[31:0]      ), //o
    .io_dmem_dataRd     (io_dmem_dataRd[31:0]           ), //i
    .io_dmem_dataWr     (stageM_io_dmem_dataWr[31:0]    ), //o
    .io_dmem_enableWr   (stageM_io_dmem_enableWr        ), //o
    .io_dmem_length     (stageM_io_dmem_length[1:0]     ), //o
    .io_dmem_select     (stageM_io_dmem_select          ), //o
    .clkCore            (clkCore                        ), //i
    .rstCore            (rstCore                        )  //i
  );
  StageWriteback stageW (
    .io_regMW_pcPlus4   (stageM_io_regMW_pcPlus4[31:0]  ), //i
    .io_regMW_aluResult (stageM_io_regMW_aluResult[31:0]), //i
    .io_regMW_rd        (stageM_io_regMW_rd[4:0]        ), //i
    .io_regMW_regWrite  (stageM_io_regMW_regWrite       ), //i
    .io_regMW_resultSrc (stageM_io_regMW_resultSrc[1:0] ), //i
    .io_regMW_memOp     (stageM_io_regMW_memOp[2:0]     ), //i
    .io_dataRd          (io_dmem_dataRd[31:0]           ), //i
    .io_rdW             (stageW_io_rdW[4:0]             ), //o
    .io_rdDataW         (stageW_io_rdDataW[31:0]        ), //o
    .io_regWriteW       (stageW_io_regWriteW            )  //o
  );
  Hazard hazard_u (
    .io_rs1D       (stageD_io_rs1D[4:0]       ), //i
    .io_rs2D       (stageD_io_rs2D[4:0]       ), //i
    .io_rs1E       (stageE_io_rs1E[4:0]       ), //i
    .io_rs2E       (stageE_io_rs2E[4:0]       ), //i
    .io_rdE        (stageE_io_rdE[4:0]        ), //i
    .io_rdM        (stageM_io_rdM[4:0]        ), //i
    .io_rdW        (stageW_io_rdW[4:0]        ), //i
    .io_pcSrcE     (stageE_io_pcSrcE          ), //i
    .io_regWriteM  (stageM_io_regWriteM       ), //i
    .io_regWriteW  (stageW_io_regWriteW       ), //i
    .io_resultSrcE (stageE_io_resultSrcE[1:0] ), //i
    .io_fetchDeny  (stageF_io_fetchDeny       ), //i
    .io_stallFD    (hazard_u_io_stallFD       ), //o
    .io_flushFD    (hazard_u_io_flushFD       ), //o
    .io_flushDE    (hazard_u_io_flushDE       ), //o
    .io_forwardAE  (hazard_u_io_forwardAE[1:0]), //o
    .io_forwardBE  (hazard_u_io_forwardBE[1:0]), //o
    .rstCore       (rstCore                   ), //i
    .clkCore       (clkCore                   )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  `endif

  assign io_imem_addr = stageF_io_imem_addr;
  assign io_imem_select = stageF_io_imem_select;
  assign io_dmem_addr = stageM_io_dmem_addr;
  assign io_dmem_dataWr = stageM_io_dmem_dataWr;
  assign io_dmem_enableWr = stageM_io_dmem_enableWr;
  assign io_dmem_length = stageM_io_dmem_length;
  assign io_dmem_select = stageM_io_dmem_select;

endmodule

module LoadFlash (
  output wire          io_done,
  output wire [31:0]   io_boot_addr,
  output wire [31:0]   io_boot_dataWr,
  output wire          io_boot_enableWr,
  output wire          io_flashspi_sel,
  output wire          io_flashspi_sclk,
  output wire          io_flashspi_mosi,
  input  wire          io_flashspi_miso,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam FlashState_idle_ = 2'd0;
  localparam FlashState_send_ = 2'd1;
  localparam FlashState_hold_ = 2'd2;
  localparam FlashState_done_ = 2'd3;
  localparam FlashPhase_comd_ = 3'd0;
  localparam FlashPhase_adr2_ = 3'd1;
  localparam FlashPhase_adr1_ = 3'd2;
  localparam FlashPhase_adr0_ = 3'd3;
  localparam FlashPhase_data_ = 3'd4;

  wire                xfspi_u_io_divisorWr_enable;
  reg        [7:0]    xfspi_u_io_mosiWr_data;
  wire                xfspi_u_io_misoRd_enable;
  wire       [15:0]   xfspi_u_io_divisorRd_data;
  wire       [7:0]    xfspi_u_io_misoRd_data;
  wire                xfspi_u_io_selRd_data;
  wire                xfspi_u_io_busyRd_data;
  wire                xfspi_u_io_spi_sel;
  wire                xfspi_u_io_spi_sclk;
  wire                xfspi_u_io_spi_mosi;
  wire       [31:0]   _zz_addr;
  reg        [1:0]    state;
  reg        [2:0]    phase;
  reg        [31:0]   addr;
  reg        [1:0]    byteIndex;
  reg        [31:0]   wordBuffer;
  reg                 wordWrite;
  wire                fspiIdle;
  wire                fspiDone;
  wire                edgeHoldSend;
  wire                edgeSendHold;
  wire                edgeSendDone;
  wire                when_LoadFlash_l102;
  wire                when_LoadFlash_l112;
  `ifndef SYNTHESIS
  reg [39:0] state_string;
  reg [39:0] phase_string;
  `endif


  assign _zz_addr = (addr + 32'h00000004);
  SpiDriver xfspi_u (
    .io_divisorRd_enable (1'b0                           ), //i
    .io_divisorRd_data   (xfspi_u_io_divisorRd_data[15:0]), //o
    .io_divisorWr_enable (xfspi_u_io_divisorWr_enable    ), //i
    .io_divisorWr_data   (16'h05dc                       ), //i
    .io_mosiWr_enable    (edgeSendHold                   ), //i
    .io_mosiWr_data      (xfspi_u_io_mosiWr_data[7:0]    ), //i
    .io_misoRd_enable    (xfspi_u_io_misoRd_enable       ), //i
    .io_misoRd_data      (xfspi_u_io_misoRd_data[7:0]    ), //o
    .io_selRd_enable     (                               ), //i
    .io_selRd_data       (xfspi_u_io_selRd_data          ), //o
    .io_selWr_enable     (                               ), //i
    .io_selWr_data       (                               ), //i
    .io_busyRd_enable    (1'b1                           ), //i
    .io_busyRd_data      (xfspi_u_io_busyRd_data         ), //o
    .io_spi_sel          (xfspi_u_io_spi_sel             ), //o
    .io_spi_sclk         (xfspi_u_io_spi_sclk            ), //o
    .io_spi_mosi         (xfspi_u_io_spi_mosi            ), //o
    .io_spi_miso         (io_flashspi_miso               ), //i
    .clkCore             (clkCore                        ), //i
    .rstSoc              (rstSoc                         )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(state)
      FlashState_idle_ : state_string = "idle_";
      FlashState_send_ : state_string = "send_";
      FlashState_hold_ : state_string = "hold_";
      FlashState_done_ : state_string = "done_";
      default : state_string = "?????";
    endcase
  end
  always @(*) begin
    case(phase)
      FlashPhase_comd_ : phase_string = "comd_";
      FlashPhase_adr2_ : phase_string = "adr2_";
      FlashPhase_adr1_ : phase_string = "adr1_";
      FlashPhase_adr0_ : phase_string = "adr0_";
      FlashPhase_data_ : phase_string = "data_";
      default : phase_string = "?????";
    endcase
  end
  `endif

  assign fspiIdle = (! xfspi_u_io_busyRd_data);
  assign fspiDone = (wordWrite && (addr == 32'h00001ffc));
  assign edgeHoldSend = ((state == FlashState_hold_) && fspiIdle);
  assign edgeSendHold = ((state == FlashState_send_) && (! fspiDone));
  assign edgeSendDone = ((state == FlashState_send_) && fspiDone);
  assign xfspi_u_io_divisorWr_enable = (state == FlashState_idle_);
  always @(*) begin
    xfspi_u_io_mosiWr_data = 8'h0;
    case(phase)
      FlashPhase_comd_ : begin
        xfspi_u_io_mosiWr_data = 8'h03;
      end
      FlashPhase_adr2_ : begin
        xfspi_u_io_mosiWr_data = addr[23 : 16];
      end
      FlashPhase_adr1_ : begin
        xfspi_u_io_mosiWr_data = addr[15 : 8];
      end
      FlashPhase_adr0_ : begin
        xfspi_u_io_mosiWr_data = addr[7 : 0];
      end
      default : begin
        xfspi_u_io_mosiWr_data = 8'h0;
      end
    endcase
  end

  assign xfspi_u_io_misoRd_enable = (edgeHoldSend && (phase == FlashPhase_data_));
  assign when_LoadFlash_l102 = (edgeHoldSend && (phase == FlashPhase_data_));
  assign when_LoadFlash_l112 = (byteIndex == 2'b11);
  assign io_boot_addr = addr;
  assign io_boot_dataWr = wordBuffer;
  assign io_boot_enableWr = wordWrite;
  assign io_done = (state == FlashState_done_);
  assign io_flashspi_sclk = xfspi_u_io_spi_sclk;
  assign io_flashspi_mosi = xfspi_u_io_spi_mosi;
  assign io_flashspi_sel = (! ((state != FlashState_idle_) && (state != FlashState_done_)));
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      state <= FlashState_idle_;
      phase <= FlashPhase_comd_;
      addr <= 32'h0;
      byteIndex <= 2'b00;
      wordBuffer <= 32'h0;
      wordWrite <= 1'b0;
    end else begin
      case(state)
        FlashState_idle_ : begin
          state <= FlashState_send_;
        end
        FlashState_send_ : begin
          if(fspiDone) begin
            state <= FlashState_done_;
          end else begin
            state <= FlashState_hold_;
          end
        end
        FlashState_hold_ : begin
          if(fspiIdle) begin
            state <= FlashState_send_;
          end
        end
        default : begin
        end
      endcase
      if(edgeHoldSend) begin
        case(phase)
          FlashPhase_comd_ : begin
            phase <= FlashPhase_adr2_;
          end
          FlashPhase_adr2_ : begin
            phase <= FlashPhase_adr1_;
          end
          FlashPhase_adr1_ : begin
            phase <= FlashPhase_adr0_;
          end
          FlashPhase_adr0_ : begin
            phase <= FlashPhase_data_;
          end
          default : begin
          end
        endcase
      end
      if(when_LoadFlash_l102) begin
        case(byteIndex)
          2'b00 : begin
            wordBuffer[7 : 0] <= xfspi_u_io_misoRd_data;
          end
          2'b01 : begin
            wordBuffer[15 : 8] <= xfspi_u_io_misoRd_data;
          end
          2'b10 : begin
            wordBuffer[23 : 16] <= xfspi_u_io_misoRd_data;
          end
          default : begin
            wordBuffer[31 : 24] <= xfspi_u_io_misoRd_data;
          end
        endcase
        byteIndex <= (byteIndex + 2'b01);
        if(when_LoadFlash_l112) begin
          wordWrite <= 1'b1;
        end
      end
      if(wordWrite) begin
        addr <= _zz_addr;
        wordWrite <= 1'b0;
      end
    end
  end


endmodule

module MemWrapper_2 (
  input  wire [1:0]    io_mcmd_addr,
  input  wire          io_mcmd_enable,
  input  wire          io_mcmd_write,
  input  wire [3:0]    io_mcmd_mask,
  input  wire [31:0]   io_mcmd_dataWr,
  output wire [31:0]   io_mcmd_dataRd,
  input  wire          clkCore,
  input  wire          rstSoc
);

  reg        [31:0]   _zz_2_spinal_port1;
  wire                _zz__zz_2_port;
  wire                _zz_io_mcmd_dataRd;
  reg                 _zz_1;
  wire                when_MemWrapper_l27;
  reg [7:0] _zz_2_symbol0 [0:2];
  reg [7:0] _zz_2_symbol1 [0:2];
  reg [7:0] _zz_2_symbol2 [0:2];
  reg [7:0] _zz_2_symbol3 [0:2];
  reg [7:0] _zz__zz_2symbol_read;
  reg [7:0] _zz__zz_2symbol_read_1;
  reg [7:0] _zz__zz_2symbol_read_2;
  reg [7:0] _zz__zz_2symbol_read_3;

  assign _zz_io_mcmd_dataRd = 1'b1;
  initial begin
    $readmemb("MohoTop.v_toplevel_topArea_soc_msreg_u_core_u__zz_2_symbol0.bin",_zz_2_symbol0);
    $readmemb("MohoTop.v_toplevel_topArea_soc_msreg_u_core_u__zz_2_symbol1.bin",_zz_2_symbol1);
    $readmemb("MohoTop.v_toplevel_topArea_soc_msreg_u_core_u__zz_2_symbol2.bin",_zz_2_symbol2);
    $readmemb("MohoTop.v_toplevel_topArea_soc_msreg_u_core_u__zz_2_symbol3.bin",_zz_2_symbol3);
  end
  always @(*) begin
    _zz_2_spinal_port1 = {_zz__zz_2symbol_read_3, _zz__zz_2symbol_read_2, _zz__zz_2symbol_read_1, _zz__zz_2symbol_read};
  end
  always @(posedge clkCore) begin
    if(io_mcmd_mask[0] && _zz_1) begin
      _zz_2_symbol0[io_mcmd_addr] <= io_mcmd_dataWr[7 : 0];
    end
    if(io_mcmd_mask[1] && _zz_1) begin
      _zz_2_symbol1[io_mcmd_addr] <= io_mcmd_dataWr[15 : 8];
    end
    if(io_mcmd_mask[2] && _zz_1) begin
      _zz_2_symbol2[io_mcmd_addr] <= io_mcmd_dataWr[23 : 16];
    end
    if(io_mcmd_mask[3] && _zz_1) begin
      _zz_2_symbol3[io_mcmd_addr] <= io_mcmd_dataWr[31 : 24];
    end
  end

  always @(posedge clkCore) begin
    if(_zz_io_mcmd_dataRd) begin
      _zz__zz_2symbol_read <= _zz_2_symbol0[io_mcmd_addr];
      _zz__zz_2symbol_read_1 <= _zz_2_symbol1[io_mcmd_addr];
      _zz__zz_2symbol_read_2 <= _zz_2_symbol2[io_mcmd_addr];
      _zz__zz_2symbol_read_3 <= _zz_2_symbol3[io_mcmd_addr];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(when_MemWrapper_l27) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_MemWrapper_l27 = (io_mcmd_enable && io_mcmd_write);
  assign io_mcmd_dataRd = _zz_2_spinal_port1;

endmodule

module TickerDriver (
  input  wire          io_ticklRd_0_enable,
  output wire [31:0]   io_ticklRd_0_data,
  input  wire          io_ticklRd_1_enable,
  output wire [31:0]   io_ticklRd_1_data,
  input  wire          io_ticklRd_2_enable,
  output wire [31:0]   io_ticklRd_2_data,
  input  wire          io_tickhRd_0_enable,
  output wire [31:0]   io_tickhRd_0_data,
  input  wire          io_tickhRd_1_enable,
  output wire [31:0]   io_tickhRd_1_data,
  input  wire          io_tickhRd_2_enable,
  output wire [31:0]   io_tickhRd_2_data,
  input  wire          io_cycleRd_0_enable,
  output wire [31:0]   io_cycleRd_0_data,
  input  wire          io_cycleRd_1_enable,
  output wire [31:0]   io_cycleRd_1_data,
  input  wire          io_cycleRd_2_enable,
  output wire [31:0]   io_cycleRd_2_data,
  input  wire          io_cycleWr_0_enable,
  input  wire [31:0]   io_cycleWr_0_data,
  input  wire          io_cycleWr_1_enable,
  input  wire [31:0]   io_cycleWr_1_data,
  input  wire          io_cycleWr_2_enable,
  input  wire [31:0]   io_cycleWr_2_data,
  input  wire          io_enableRd_enable,
  output wire          io_enableRd_data,
  input  wire          io_enableWr_enable,
  input  wire          io_enableWr_data,
  input  wire          io_clearWr_enable,
  input  wire          io_clearWr_data,
  input  wire          clkCore,
  input  wire          rstSoc
);

  wire       [31:0]   _zz__zz_when_TickerDriver_l45_1;
  wire       [63:0]   _zz__zz_tickl_0;
  wire       [31:0]   _zz__zz_when_TickerDriver_l45_3;
  wire       [63:0]   _zz__zz_tickl_1;
  wire       [31:0]   _zz__zz_when_TickerDriver_l45_5;
  wire       [63:0]   _zz__zz_tickl_2;
  reg        [31:0]   tickl_0;
  reg        [31:0]   tickl_1;
  reg        [31:0]   tickl_2;
  reg        [31:0]   tickh_0;
  reg        [31:0]   tickh_1;
  reg        [31:0]   tickh_2;
  reg        [31:0]   cycle_0;
  reg        [31:0]   cycle_1;
  reg        [31:0]   cycle_2;
  reg                 enable;
  wire                clear;
  reg        [31:0]   _zz_when_TickerDriver_l45;
  wire                _zz_when_TickerDriver_l45_1;
  wire                when_TickerDriver_l45;
  wire       [63:0]   _zz_tickl_0;
  wire                when_TickerDriver_l53;
  reg        [31:0]   _zz_when_TickerDriver_l45_2;
  wire                _zz_when_TickerDriver_l45_3;
  wire                when_TickerDriver_l45_1;
  wire       [63:0]   _zz_tickl_1;
  wire                when_TickerDriver_l53_1;
  reg        [31:0]   _zz_when_TickerDriver_l45_4;
  wire                _zz_when_TickerDriver_l45_5;
  wire                when_TickerDriver_l45_2;
  wire       [63:0]   _zz_tickl_2;
  wire                when_TickerDriver_l53_2;

  assign _zz__zz_when_TickerDriver_l45_1 = (cycle_0 - 32'h00000001);
  assign _zz__zz_tickl_0 = ({tickh_0,tickl_0} + 64'h0000000000000001);
  assign _zz__zz_when_TickerDriver_l45_3 = (cycle_1 - 32'h00000001);
  assign _zz__zz_tickl_1 = ({tickh_1,tickl_1} + 64'h0000000000000001);
  assign _zz__zz_when_TickerDriver_l45_5 = (cycle_2 - 32'h00000001);
  assign _zz__zz_tickl_2 = ({tickh_2,tickl_2} + 64'h0000000000000001);
  assign clear = (io_clearWr_enable && io_clearWr_data);
  assign _zz_when_TickerDriver_l45_1 = ((cycle_0 == 32'h0) ? 1'b0 : (_zz__zz_when_TickerDriver_l45_1 <= _zz_when_TickerDriver_l45));
  assign when_TickerDriver_l45 = (clear || (enable && _zz_when_TickerDriver_l45_1));
  assign _zz_tickl_0 = _zz__zz_tickl_0;
  assign when_TickerDriver_l53 = (enable && _zz_when_TickerDriver_l45_1);
  assign io_ticklRd_0_data = tickl_0;
  assign io_tickhRd_0_data = tickh_0;
  assign io_cycleRd_0_data = cycle_0;
  assign _zz_when_TickerDriver_l45_3 = ((cycle_1 == 32'h0) ? 1'b0 : (_zz__zz_when_TickerDriver_l45_3 <= _zz_when_TickerDriver_l45_2));
  assign when_TickerDriver_l45_1 = (clear || (enable && _zz_when_TickerDriver_l45_3));
  assign _zz_tickl_1 = _zz__zz_tickl_1;
  assign when_TickerDriver_l53_1 = (enable && _zz_when_TickerDriver_l45_3);
  assign io_ticklRd_1_data = tickl_1;
  assign io_tickhRd_1_data = tickh_1;
  assign io_cycleRd_1_data = cycle_1;
  assign _zz_when_TickerDriver_l45_5 = ((cycle_2 == 32'h0) ? 1'b0 : (_zz__zz_when_TickerDriver_l45_5 <= _zz_when_TickerDriver_l45_4));
  assign when_TickerDriver_l45_2 = (clear || (enable && _zz_when_TickerDriver_l45_5));
  assign _zz_tickl_2 = _zz__zz_tickl_2;
  assign when_TickerDriver_l53_2 = (enable && _zz_when_TickerDriver_l45_5);
  assign io_ticklRd_2_data = tickl_2;
  assign io_tickhRd_2_data = tickh_2;
  assign io_cycleRd_2_data = cycle_2;
  assign io_enableRd_data = enable;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      tickl_0 <= 32'h0;
      tickl_1 <= 32'h0;
      tickl_2 <= 32'h0;
      tickh_0 <= 32'h0;
      tickh_1 <= 32'h0;
      tickh_2 <= 32'h0;
      cycle_0 <= 32'h0;
      cycle_1 <= 32'h0;
      cycle_2 <= 32'h0;
      enable <= 1'b1;
      cycle_0 <= 32'h00000096;
      _zz_when_TickerDriver_l45 <= 32'h0;
      cycle_1 <= 32'h000249f0;
      _zz_when_TickerDriver_l45_2 <= 32'h0;
      cycle_2 <= 32'h08f0d180;
      _zz_when_TickerDriver_l45_4 <= 32'h0;
    end else begin
      if(io_cycleWr_0_enable) begin
        cycle_0 <= io_cycleWr_0_data;
      end
      if(when_TickerDriver_l45) begin
        _zz_when_TickerDriver_l45 <= 32'h0;
      end else begin
        if(enable) begin
          _zz_when_TickerDriver_l45 <= (_zz_when_TickerDriver_l45 + 32'h00000001);
        end
      end
      if(clear) begin
        tickl_0 <= 32'h0;
        tickh_0 <= 32'h0;
      end else begin
        if(when_TickerDriver_l53) begin
          tickl_0 <= _zz_tickl_0[31 : 0];
          tickh_0 <= _zz_tickl_0[63 : 32];
        end
      end
      if(io_cycleWr_1_enable) begin
        cycle_1 <= io_cycleWr_1_data;
      end
      if(when_TickerDriver_l45_1) begin
        _zz_when_TickerDriver_l45_2 <= 32'h0;
      end else begin
        if(enable) begin
          _zz_when_TickerDriver_l45_2 <= (_zz_when_TickerDriver_l45_2 + 32'h00000001);
        end
      end
      if(clear) begin
        tickl_1 <= 32'h0;
        tickh_1 <= 32'h0;
      end else begin
        if(when_TickerDriver_l53_1) begin
          tickl_1 <= _zz_tickl_1[31 : 0];
          tickh_1 <= _zz_tickl_1[63 : 32];
        end
      end
      if(io_cycleWr_2_enable) begin
        cycle_2 <= io_cycleWr_2_data;
      end
      if(when_TickerDriver_l45_2) begin
        _zz_when_TickerDriver_l45_4 <= 32'h0;
      end else begin
        if(enable) begin
          _zz_when_TickerDriver_l45_4 <= (_zz_when_TickerDriver_l45_4 + 32'h00000001);
        end
      end
      if(clear) begin
        tickl_2 <= 32'h0;
        tickh_2 <= 32'h0;
      end else begin
        if(when_TickerDriver_l53_2) begin
          tickl_2 <= _zz_tickl_2[31 : 0];
          tickh_2 <= _zz_tickl_2[63 : 32];
        end
      end
      if(io_enableWr_enable) begin
        enable <= io_enableWr_data;
      end
    end
  end


endmodule

//SpiDriver_1 replaced by SpiDriver

module UartDriver (
  input  wire          io_txWr_enable,
  input  wire [7:0]    io_txWr_data,
  input  wire          io_rxRd_enable,
  output wire [7:0]    io_rxRd_data,
  input  wire          io_divisorRd_enable,
  output wire [15:0]   io_divisorRd_data,
  input  wire          io_divisorWr_enable,
  input  wire [15:0]   io_divisorWr_data,
  input  wire          io_txbusyRd_enable,
  output wire          io_txbusyRd_data,
  input  wire          io_rxavaiRd_enable,
  output wire          io_rxavaiRd_data,
  output reg           io_uart_tx,
  input  wire          io_uart_rx,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam UartState_idle_ = 2'd0;
  localparam UartState_start_ = 2'd1;
  localparam UartState_data_ = 2'd2;
  localparam UartState_stop_ = 2'd3;

  wire       [15:0]   _zz_bflag;
  wire       [14:0]   _zz_bflag_1;
  wire       [14:0]   _zz_bflag_2;
  reg        [7:0]    tx;
  reg        [7:0]    rx;
  reg        [15:0]   divisor;
  reg                 txbusy;
  reg                 rxavai;
  reg        [15:0]   bcounter;
  wire                bflag;
  wire                when_UartDriver_l34;
  reg                 bclk;
  reg        [1:0]    txarea_state;
  reg        [3:0]    txarea_bitCycle16;
  wire                txarea_bitNext;
  wire                when_UartDriver_l54;
  reg        [2:0]    txarea_dataIndex;
  wire                txarea_dataDone;
  wire                when_UartDriver_l61;
  wire       [1:0]    _zz_txarea_state;
  wire                edgeTxBeg;
  wire                edgeTxEnd;
  reg        [1:0]    rxarea_state;
  reg        [3:0]    rxarea_bitCycle16;
  wire                rxarea_bitNext;
  wire                when_UartDriver_l91;
  reg        [2:0]    rxarea_dataIndex;
  wire                rxarea_dataDone;
  wire                when_UartDriver_l98;
  wire                rxarea_isCycleSample;
  wire                rxarea_isCycleVerify;
  wire                rxarea_validStart;
  wire                rxarea_validStop;
  wire                rxarea_validData;
  wire                rxarea_exitStart;
  wire                rxarea_exitStop;
  wire                rxarea_exitData;
  wire                when_UartDriver_l122;
  wire                edgeRxBeg;
  wire                edgeRxEnd;
  wire                edgeRxDat;
  `ifndef SYNTHESIS
  reg [47:0] txarea_state_string;
  reg [47:0] _zz_txarea_state_string;
  reg [47:0] rxarea_state_string;
  `endif


  assign _zz_bflag_1 = (_zz_bflag_2 - 15'h0001);
  assign _zz_bflag = {1'd0, _zz_bflag_1};
  assign _zz_bflag_2 = (divisor >>> 1'd1);
  `ifndef SYNTHESIS
  always @(*) begin
    case(txarea_state)
      UartState_idle_ : txarea_state_string = "idle_ ";
      UartState_start_ : txarea_state_string = "start_";
      UartState_data_ : txarea_state_string = "data_ ";
      UartState_stop_ : txarea_state_string = "stop_ ";
      default : txarea_state_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_txarea_state)
      UartState_idle_ : _zz_txarea_state_string = "idle_ ";
      UartState_start_ : _zz_txarea_state_string = "start_";
      UartState_data_ : _zz_txarea_state_string = "data_ ";
      UartState_stop_ : _zz_txarea_state_string = "stop_ ";
      default : _zz_txarea_state_string = "??????";
    endcase
  end
  always @(*) begin
    case(rxarea_state)
      UartState_idle_ : rxarea_state_string = "idle_ ";
      UartState_start_ : rxarea_state_string = "start_";
      UartState_data_ : rxarea_state_string = "data_ ";
      UartState_stop_ : rxarea_state_string = "stop_ ";
      default : rxarea_state_string = "??????";
    endcase
  end
  `endif

  assign bflag = (bcounter == _zz_bflag);
  assign when_UartDriver_l34 = (bflag || io_divisorWr_enable);
  assign txarea_bitNext = (txarea_bitCycle16 == 4'b1111);
  assign when_UartDriver_l54 = (txarea_state == UartState_idle_);
  assign txarea_dataDone = ((txarea_dataIndex == 3'b111) && txarea_bitNext);
  assign when_UartDriver_l61 = (txarea_state != UartState_data_);
  assign _zz_txarea_state = (txbusy ? UartState_start_ : UartState_idle_);
  assign edgeTxBeg = (((txarea_state == UartState_idle_) || (txarea_state == UartState_stop_)) && io_txWr_enable);
  assign edgeTxEnd = ((((txarea_state == UartState_data_) && txarea_dataDone) && bflag) && (! bclk));
  assign rxarea_bitNext = (rxarea_bitCycle16 == 4'b1111);
  assign when_UartDriver_l91 = (rxarea_state == UartState_idle_);
  assign rxarea_dataDone = ((rxarea_dataIndex == 3'b111) && rxarea_bitNext);
  assign when_UartDriver_l98 = (rxarea_state != UartState_data_);
  assign rxarea_isCycleSample = (rxarea_bitCycle16 == 4'b0111);
  assign rxarea_isCycleVerify = (rxarea_bitCycle16 == 4'b1000);
  assign rxarea_validStart = (io_uart_rx == 1'b0);
  assign rxarea_validStop = (io_uart_rx == 1'b1);
  assign rxarea_validData = (io_uart_rx == rx[rxarea_dataIndex]);
  assign rxarea_exitStart = ((rxarea_isCycleSample || rxarea_isCycleVerify) && (! rxarea_validStart));
  assign rxarea_exitStop = ((rxarea_isCycleSample || rxarea_isCycleVerify) && (! rxarea_validStop));
  assign rxarea_exitData = (rxarea_isCycleVerify && (! rxarea_validData));
  assign when_UartDriver_l122 = ((! rxavai) && rxarea_validStart);
  assign edgeRxBeg = ((rxarea_state == UartState_idle_) && io_rxRd_enable);
  assign edgeRxEnd = ((((rxarea_state == UartState_stop_) && rxarea_bitNext) && bflag) && (! bclk));
  assign edgeRxDat = ((((rxarea_state == UartState_data_) && rxarea_isCycleSample) && bflag) && (! bclk));
  assign io_rxRd_data = rx;
  assign io_divisorRd_data = divisor;
  assign io_txbusyRd_data = txbusy;
  assign io_rxavaiRd_data = rxavai;
  always @(*) begin
    io_uart_tx = 1'b1;
    case(txarea_state)
      UartState_start_ : begin
        io_uart_tx = 1'b0;
      end
      UartState_data_ : begin
        io_uart_tx = tx[txarea_dataIndex];
      end
      default : begin
      end
    endcase
  end

  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      tx <= 8'h0;
      rx <= 8'h0;
      divisor <= 16'h0;
      txbusy <= 1'b0;
      rxavai <= 1'b0;
      bcounter <= 16'h0;
      bclk <= 1'b0;
    end else begin
      if(when_UartDriver_l34) begin
        bcounter <= 16'h0;
      end else begin
        bcounter <= (bcounter + 16'h0001);
      end
      if(bflag) begin
        bclk <= (! bclk);
      end
      if(edgeTxBeg) begin
        txbusy <= 1'b1;
      end
      if(edgeTxEnd) begin
        txbusy <= 1'b0;
      end
      if(io_txWr_enable) begin
        tx <= io_txWr_data;
      end
      if(edgeRxBeg) begin
        rxavai <= 1'b0;
      end
      if(edgeRxEnd) begin
        rxavai <= 1'b1;
      end
      if(edgeRxDat) begin
        rx[rxarea_dataIndex] <= io_uart_rx;
      end
      if(io_divisorWr_enable) begin
        divisor <= io_divisorWr_data;
      end
    end
  end

  always @(posedge bclk or posedge rstSoc) begin
    if(rstSoc) begin
      txarea_state <= UartState_idle_;
      txarea_bitCycle16 <= 4'b0000;
      txarea_dataIndex <= 3'b000;
      rxarea_state <= UartState_idle_;
      rxarea_bitCycle16 <= 4'b0001;
      rxarea_dataIndex <= 3'b000;
    end else begin
      if(when_UartDriver_l54) begin
        txarea_bitCycle16 <= 4'b0000;
      end else begin
        txarea_bitCycle16 <= (txarea_bitCycle16 + 4'b0001);
      end
      if(when_UartDriver_l61) begin
        txarea_dataIndex <= 3'b000;
      end else begin
        if(txarea_bitNext) begin
          txarea_dataIndex <= (txarea_dataIndex + 3'b001);
        end
      end
      case(txarea_state)
        UartState_idle_ : begin
          if(txbusy) begin
            txarea_state <= UartState_start_;
          end
        end
        UartState_start_ : begin
          if(txarea_bitNext) begin
            txarea_state <= UartState_data_;
          end
        end
        UartState_data_ : begin
          if(txarea_dataDone) begin
            txarea_state <= UartState_stop_;
          end
        end
        default : begin
          if(txarea_bitNext) begin
            txarea_state <= _zz_txarea_state;
          end
        end
      endcase
      if(when_UartDriver_l91) begin
        rxarea_bitCycle16 <= 4'b0001;
      end else begin
        rxarea_bitCycle16 <= (rxarea_bitCycle16 + 4'b0001);
      end
      if(when_UartDriver_l98) begin
        rxarea_dataIndex <= 3'b000;
      end else begin
        if(rxarea_bitNext) begin
          rxarea_dataIndex <= (rxarea_dataIndex + 3'b001);
        end
      end
      case(rxarea_state)
        UartState_idle_ : begin
          if(when_UartDriver_l122) begin
            rxarea_state <= UartState_start_;
          end
        end
        UartState_start_ : begin
          if(rxarea_exitStart) begin
            rxarea_state <= UartState_idle_;
          end else begin
            if(rxarea_bitNext) begin
              rxarea_state <= UartState_data_;
            end
          end
        end
        UartState_data_ : begin
          if(rxarea_exitData) begin
            rxarea_state <= UartState_idle_;
          end else begin
            if(rxarea_dataDone) begin
              rxarea_state <= UartState_stop_;
            end
          end
        end
        default : begin
          if(rxarea_exitStop) begin
            rxarea_state <= UartState_idle_;
          end else begin
            if(rxarea_bitNext) begin
              rxarea_state <= UartState_idle_;
            end
          end
        end
      endcase
    end
  end


endmodule

module GpioDriver (
  input  wire          io_idatRd_0_0_enable,
  output wire [7:0]    io_idatRd_0_0_data,
  input  wire          io_idatRd_0_1_enable,
  output wire [7:0]    io_idatRd_0_1_data,
  input  wire          io_idatRd_0_2_enable,
  output wire [7:0]    io_idatRd_0_2_data,
  input  wire          io_idatRd_0_3_enable,
  output wire [7:0]    io_idatRd_0_3_data,
  input  wire          io_oenaRd_0_0_enable,
  output wire [7:0]    io_oenaRd_0_0_data,
  input  wire          io_oenaRd_0_1_enable,
  output wire [7:0]    io_oenaRd_0_1_data,
  input  wire          io_oenaRd_0_2_enable,
  output wire [7:0]    io_oenaRd_0_2_data,
  input  wire          io_oenaRd_0_3_enable,
  output wire [7:0]    io_oenaRd_0_3_data,
  input  wire          io_oenaWr_0_0_enable,
  input  wire [7:0]    io_oenaWr_0_0_data,
  input  wire          io_oenaWr_0_1_enable,
  input  wire [7:0]    io_oenaWr_0_1_data,
  input  wire          io_oenaWr_0_2_enable,
  input  wire [7:0]    io_oenaWr_0_2_data,
  input  wire          io_oenaWr_0_3_enable,
  input  wire [7:0]    io_oenaWr_0_3_data,
  input  wire          io_odatRd_0_0_enable,
  output wire [7:0]    io_odatRd_0_0_data,
  input  wire          io_odatRd_0_1_enable,
  output wire [7:0]    io_odatRd_0_1_data,
  input  wire          io_odatRd_0_2_enable,
  output wire [7:0]    io_odatRd_0_2_data,
  input  wire          io_odatRd_0_3_enable,
  output wire [7:0]    io_odatRd_0_3_data,
  input  wire          io_odatWr_0_0_enable,
  input  wire [7:0]    io_odatWr_0_0_data,
  input  wire          io_odatWr_0_1_enable,
  input  wire [7:0]    io_odatWr_0_1_data,
  input  wire          io_odatWr_0_2_enable,
  input  wire [7:0]    io_odatWr_0_2_data,
  input  wire          io_odatWr_0_3_enable,
  input  wire [7:0]    io_odatWr_0_3_data,
  input  wire [31:0]   io_gpio_0_read,
  output wire [31:0]   io_gpio_0_write,
  output wire [31:0]   io_gpio_0_writeEnable,
  input  wire          clkCore,
  input  wire          rstSoc
);

  reg        [31:0]   idat_0;
  reg        [31:0]   oena_0;
  reg        [31:0]   odat_0;

  assign io_idatRd_0_0_data = idat_0[7 : 0];
  assign io_oenaRd_0_0_data = oena_0[7 : 0];
  assign io_odatRd_0_0_data = odat_0[7 : 0];
  assign io_idatRd_0_1_data = idat_0[15 : 8];
  assign io_oenaRd_0_1_data = oena_0[15 : 8];
  assign io_odatRd_0_1_data = odat_0[15 : 8];
  assign io_idatRd_0_2_data = idat_0[23 : 16];
  assign io_oenaRd_0_2_data = oena_0[23 : 16];
  assign io_odatRd_0_2_data = odat_0[23 : 16];
  assign io_idatRd_0_3_data = idat_0[31 : 24];
  assign io_oenaRd_0_3_data = oena_0[31 : 24];
  assign io_odatRd_0_3_data = odat_0[31 : 24];
  assign io_gpio_0_writeEnable = oena_0;
  assign io_gpio_0_write = odat_0;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      idat_0 <= 32'h0;
      oena_0 <= 32'h0;
      odat_0 <= 32'h0;
    end else begin
      idat_0 <= io_gpio_0_read;
      if(io_oenaWr_0_0_enable) begin
        oena_0[7 : 0] <= io_oenaWr_0_0_data;
      end
      if(io_odatWr_0_0_enable) begin
        odat_0[7 : 0] <= io_odatWr_0_0_data;
      end
      if(io_oenaWr_0_1_enable) begin
        oena_0[15 : 8] <= io_oenaWr_0_1_data;
      end
      if(io_odatWr_0_1_enable) begin
        odat_0[15 : 8] <= io_odatWr_0_1_data;
      end
      if(io_oenaWr_0_2_enable) begin
        oena_0[23 : 16] <= io_oenaWr_0_2_data;
      end
      if(io_odatWr_0_2_enable) begin
        odat_0[23 : 16] <= io_odatWr_0_2_data;
      end
      if(io_oenaWr_0_3_enable) begin
        oena_0[31 : 24] <= io_oenaWr_0_3_data;
      end
      if(io_odatWr_0_3_enable) begin
        odat_0[31 : 24] <= io_odatWr_0_3_data;
      end
    end
  end


endmodule

//MemWrapper_1 replaced by MemWrapper

module MemWrapper (
  input  wire [10:0]   io_mcmd_addr,
  input  wire          io_mcmd_enable,
  input  wire          io_mcmd_write,
  input  wire [3:0]    io_mcmd_mask,
  input  wire [31:0]   io_mcmd_dataWr,
  output wire [31:0]   io_mcmd_dataRd,
  input  wire          clkCore
);

  wire       [31:0]   sramHl55_2_io_mcmd_dataRd;

  SramHl55 sramHl55_2 (
    .io_mcmd_addr   (io_mcmd_addr[10:0]             ), //i
    .io_mcmd_enable (io_mcmd_enable                 ), //i
    .io_mcmd_write  (io_mcmd_write                  ), //i
    .io_mcmd_mask   (io_mcmd_mask[3:0]              ), //i
    .io_mcmd_dataWr (io_mcmd_dataWr[31:0]           ), //i
    .io_mcmd_dataRd (sramHl55_2_io_mcmd_dataRd[31:0]), //o
    .clkCore        (clkCore                        )  //i
  );
  assign io_mcmd_dataRd = sramHl55_2_io_mcmd_dataRd;

endmodule

module Hazard (
  input  wire [4:0]    io_rs1D,
  input  wire [4:0]    io_rs2D,
  input  wire [4:0]    io_rs1E,
  input  wire [4:0]    io_rs2E,
  input  wire [4:0]    io_rdE,
  input  wire [4:0]    io_rdM,
  input  wire [4:0]    io_rdW,
  input  wire [0:0]    io_pcSrcE,
  input  wire          io_regWriteM,
  input  wire          io_regWriteW,
  input  wire [1:0]    io_resultSrcE,
  input  wire          io_fetchDeny,
  output wire          io_stallFD,
  output wire          io_flushFD,
  output wire          io_flushDE,
  output reg  [1:0]    io_forwardAE,
  output reg  [1:0]    io_forwardBE,
  input  wire          rstCore,
  input  wire          clkCore
);
  localparam PcSrc_pc4_ = 1'd0;
  localparam PcSrc_pctarget_ = 1'd1;
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam Forward_rf_ = 2'd0;
  localparam Forward_mem_ = 2'd1;
  localparam Forward_wb_ = 2'd2;

  wire                fwdNotZeroA;
  wire                fwdFromMA;
  wire                fwdFromWA;
  wire                when_Hazard_l50;
  wire                when_Hazard_l52;
  wire                fwdNotZeroB;
  wire                fwdFromMB;
  wire                fwdFromWB;
  wire                when_Hazard_l62;
  wire                when_Hazard_l64;
  wire                detectLoad;
  wire                detectJump;
  reg                 io_fetchDeny_regNext;
  wire                fetchReplay;
  `ifndef SYNTHESIS
  reg [71:0] io_pcSrcE_string;
  reg [31:0] io_resultSrcE_string;
  reg [31:0] io_forwardAE_string;
  reg [31:0] io_forwardBE_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(io_pcSrcE)
      PcSrc_pc4_ : io_pcSrcE_string = "pc4_     ";
      PcSrc_pctarget_ : io_pcSrcE_string = "pctarget_";
      default : io_pcSrcE_string = "?????????";
    endcase
  end
  always @(*) begin
    case(io_resultSrcE)
      ResultSrc_alu_ : io_resultSrcE_string = "alu_";
      ResultSrc_mem_ : io_resultSrcE_string = "mem_";
      ResultSrc_pc4_ : io_resultSrcE_string = "pc4_";
      default : io_resultSrcE_string = "????";
    endcase
  end
  always @(*) begin
    case(io_forwardAE)
      Forward_rf_ : io_forwardAE_string = "rf_ ";
      Forward_mem_ : io_forwardAE_string = "mem_";
      Forward_wb_ : io_forwardAE_string = "wb_ ";
      default : io_forwardAE_string = "????";
    endcase
  end
  always @(*) begin
    case(io_forwardBE)
      Forward_rf_ : io_forwardBE_string = "rf_ ";
      Forward_mem_ : io_forwardBE_string = "mem_";
      Forward_wb_ : io_forwardBE_string = "wb_ ";
      default : io_forwardBE_string = "????";
    endcase
  end
  `endif

  assign fwdNotZeroA = (io_rs1E != 5'h0);
  assign fwdFromMA = ((io_rs1E == io_rdM) && io_regWriteM);
  assign fwdFromWA = ((io_rs1E == io_rdW) && io_regWriteW);
  assign when_Hazard_l50 = (fwdNotZeroA && fwdFromMA);
  always @(*) begin
    if(when_Hazard_l50) begin
      io_forwardAE = Forward_mem_;
    end else begin
      if(when_Hazard_l52) begin
        io_forwardAE = Forward_wb_;
      end else begin
        io_forwardAE = Forward_rf_;
      end
    end
  end

  assign when_Hazard_l52 = (fwdNotZeroA && fwdFromWA);
  assign fwdNotZeroB = (io_rs2E != 5'h0);
  assign fwdFromMB = ((io_rs2E == io_rdM) && io_regWriteM);
  assign fwdFromWB = ((io_rs2E == io_rdW) && io_regWriteW);
  assign when_Hazard_l62 = (fwdNotZeroB && fwdFromMB);
  always @(*) begin
    if(when_Hazard_l62) begin
      io_forwardBE = Forward_mem_;
    end else begin
      if(when_Hazard_l64) begin
        io_forwardBE = Forward_wb_;
      end else begin
        io_forwardBE = Forward_rf_;
      end
    end
  end

  assign when_Hazard_l64 = (fwdNotZeroB && fwdFromWB);
  assign detectLoad = ((io_resultSrcE == ResultSrc_mem_) && ((io_rs1D == io_rdE) || (io_rs2D == io_rdE)));
  assign detectJump = (io_pcSrcE == PcSrc_pctarget_);
  assign fetchReplay = (io_fetchDeny_regNext && (! detectJump));
  assign io_stallFD = ((detectLoad || fetchReplay) || rstCore);
  assign io_flushFD = detectJump;
  assign io_flushDE = ((detectLoad || detectJump) || fetchReplay);
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      io_fetchDeny_regNext <= 1'b0;
    end else begin
      io_fetchDeny_regNext <= io_fetchDeny;
    end
  end


endmodule

module StageWriteback (
  input  wire [31:0]   io_regMW_pcPlus4,
  input  wire [31:0]   io_regMW_aluResult,
  input  wire [4:0]    io_regMW_rd,
  input  wire          io_regMW_regWrite,
  input  wire [1:0]    io_regMW_resultSrc,
  input  wire [2:0]    io_regMW_memOp,
  input  wire [31:0]   io_dataRd,
  output wire [4:0]    io_rdW,
  output reg  [31:0]   io_rdDataW,
  output wire          io_regWriteW
);
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;

  wire       [31:0]   _zz_memResult;
  wire       [15:0]   _zz_memResult_1;
  wire       [31:0]   _zz_memResult_2;
  wire       [7:0]    _zz_memResult_3;
  wire       [31:0]   _zz_memResult_4;
  wire       [15:0]   _zz_memResult_5;
  wire       [31:0]   _zz_memResult_6;
  wire       [7:0]    _zz_memResult_7;
  reg        [31:0]   memResult;
  `ifndef SYNTHESIS
  reg [31:0] io_regMW_resultSrc_string;
  reg [47:0] io_regMW_memOp_string;
  `endif


  assign _zz_memResult_1 = io_dataRd[15 : 0];
  assign _zz_memResult = {{16{_zz_memResult_1[15]}}, _zz_memResult_1};
  assign _zz_memResult_3 = io_dataRd[7 : 0];
  assign _zz_memResult_2 = {{24{_zz_memResult_3[7]}}, _zz_memResult_3};
  assign _zz_memResult_5 = io_dataRd[15 : 0];
  assign _zz_memResult_4 = {16'd0, _zz_memResult_5};
  assign _zz_memResult_7 = io_dataRd[7 : 0];
  assign _zz_memResult_6 = {24'd0, _zz_memResult_7};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_regMW_resultSrc)
      ResultSrc_alu_ : io_regMW_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regMW_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regMW_resultSrc_string = "pc4_";
      default : io_regMW_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regMW_memOp)
      MemOp_byte_ : io_regMW_memOp_string = "byte_ ";
      MemOp_half_ : io_regMW_memOp_string = "half_ ";
      MemOp_word_ : io_regMW_memOp_string = "word_ ";
      MemOp_byteu_ : io_regMW_memOp_string = "byteu_";
      MemOp_halfu_ : io_regMW_memOp_string = "halfu_";
      default : io_regMW_memOp_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    case(io_regMW_memOp)
      MemOp_word_ : begin
        memResult = io_dataRd[31 : 0];
      end
      MemOp_half_ : begin
        memResult = _zz_memResult;
      end
      MemOp_byte_ : begin
        memResult = _zz_memResult_2;
      end
      MemOp_halfu_ : begin
        memResult = _zz_memResult_4;
      end
      default : begin
        memResult = _zz_memResult_6;
      end
    endcase
  end

  always @(*) begin
    case(io_regMW_resultSrc)
      ResultSrc_alu_ : begin
        io_rdDataW = io_regMW_aluResult;
      end
      ResultSrc_mem_ : begin
        io_rdDataW = memResult;
      end
      default : begin
        io_rdDataW = io_regMW_pcPlus4;
      end
    endcase
  end

  assign io_rdW = io_regMW_rd;
  assign io_regWriteW = io_regMW_regWrite;

endmodule

module StageMemory (
  output reg  [31:0]   io_regMW_pcPlus4,
  output reg  [31:0]   io_regMW_aluResult,
  output reg  [4:0]    io_regMW_rd,
  output reg           io_regMW_regWrite,
  output reg  [1:0]    io_regMW_resultSrc,
  output reg  [2:0]    io_regMW_memOp,
  input  wire [31:0]   io_regEM_pcPlus4,
  input  wire [31:0]   io_regEM_rs2Data,
  input  wire [31:0]   io_regEM_aluResult,
  input  wire [4:0]    io_regEM_rd,
  input  wire          io_regEM_regWrite,
  input  wire [1:0]    io_regEM_resultSrc,
  input  wire          io_regEM_memWrite,
  input  wire [2:0]    io_regEM_memOp,
  output wire [31:0]   io_resultM,
  output wire [4:0]    io_rdM,
  output wire          io_regWriteM,
  output wire [31:0]   io_dmem_addr,
  input  wire [31:0]   io_dmem_dataRd,
  output wire [31:0]   io_dmem_dataWr,
  output wire          io_dmem_enableWr,
  output wire [1:0]    io_dmem_length,
  output wire          io_dmem_select,
  input  wire          clkCore,
  input  wire          rstCore
);
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;
  localparam BusLength_byte_ = 2'd0;
  localparam BusLength_half_ = 2'd1;
  localparam BusLength_word_ = 2'd2;

  reg        [1:0]    length;
  `ifndef SYNTHESIS
  reg [31:0] io_regMW_resultSrc_string;
  reg [47:0] io_regMW_memOp_string;
  reg [31:0] io_regEM_resultSrc_string;
  reg [47:0] io_regEM_memOp_string;
  reg [39:0] io_dmem_length_string;
  reg [39:0] length_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(io_regMW_resultSrc)
      ResultSrc_alu_ : io_regMW_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regMW_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regMW_resultSrc_string = "pc4_";
      default : io_regMW_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regMW_memOp)
      MemOp_byte_ : io_regMW_memOp_string = "byte_ ";
      MemOp_half_ : io_regMW_memOp_string = "half_ ";
      MemOp_word_ : io_regMW_memOp_string = "word_ ";
      MemOp_byteu_ : io_regMW_memOp_string = "byteu_";
      MemOp_halfu_ : io_regMW_memOp_string = "halfu_";
      default : io_regMW_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_regEM_resultSrc)
      ResultSrc_alu_ : io_regEM_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regEM_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regEM_resultSrc_string = "pc4_";
      default : io_regEM_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regEM_memOp)
      MemOp_byte_ : io_regEM_memOp_string = "byte_ ";
      MemOp_half_ : io_regEM_memOp_string = "half_ ";
      MemOp_word_ : io_regEM_memOp_string = "word_ ";
      MemOp_byteu_ : io_regEM_memOp_string = "byteu_";
      MemOp_halfu_ : io_regEM_memOp_string = "halfu_";
      default : io_regEM_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_dmem_length)
      BusLength_byte_ : io_dmem_length_string = "byte_";
      BusLength_half_ : io_dmem_length_string = "half_";
      BusLength_word_ : io_dmem_length_string = "word_";
      default : io_dmem_length_string = "?????";
    endcase
  end
  always @(*) begin
    case(length)
      BusLength_byte_ : length_string = "byte_";
      BusLength_half_ : length_string = "half_";
      BusLength_word_ : length_string = "word_";
      default : length_string = "?????";
    endcase
  end
  `endif

  always @(*) begin
    case(io_regEM_memOp)
      MemOp_word_ : begin
        length = BusLength_word_;
      end
      MemOp_half_ : begin
        length = BusLength_half_;
      end
      MemOp_byte_ : begin
        length = BusLength_byte_;
      end
      MemOp_halfu_ : begin
        length = BusLength_half_;
      end
      default : begin
        length = BusLength_byte_;
      end
    endcase
  end

  assign io_dmem_addr = io_regEM_aluResult;
  assign io_dmem_dataWr = io_regEM_rs2Data;
  assign io_dmem_length = length;
  assign io_dmem_enableWr = io_regEM_memWrite;
  assign io_dmem_select = (io_regEM_memWrite || (io_regEM_resultSrc == ResultSrc_mem_));
  assign io_resultM = ((io_regEM_resultSrc == ResultSrc_pc4_) ? io_regEM_pcPlus4 : io_regEM_aluResult);
  assign io_rdM = io_regEM_rd;
  assign io_regWriteM = io_regEM_regWrite;
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      io_regMW_pcPlus4 <= 32'h0;
      io_regMW_aluResult <= 32'h0;
      io_regMW_rd <= 5'h0;
      io_regMW_regWrite <= 1'b0;
      io_regMW_resultSrc <= ResultSrc_alu_;
      io_regMW_memOp <= MemOp_word_;
    end else begin
      io_regMW_pcPlus4 <= io_regEM_pcPlus4;
      io_regMW_aluResult <= io_regEM_aluResult;
      io_regMW_rd <= io_regEM_rd;
      io_regMW_regWrite <= io_regEM_regWrite;
      io_regMW_resultSrc <= io_regEM_resultSrc;
      io_regMW_memOp <= io_regEM_memOp;
    end
  end


endmodule

module StageExecute (
  output reg  [31:0]   io_regEM_pcPlus4,
  output reg  [31:0]   io_regEM_rs2Data,
  output reg  [31:0]   io_regEM_aluResult,
  output reg  [4:0]    io_regEM_rd,
  output reg           io_regEM_regWrite,
  output reg  [1:0]    io_regEM_resultSrc,
  output reg           io_regEM_memWrite,
  output reg  [2:0]    io_regEM_memOp,
  input  wire [31:0]   io_regDE_pc,
  input  wire [31:0]   io_regDE_pcPlus4,
  input  wire [31:0]   io_regDE_rs1Data,
  input  wire [31:0]   io_regDE_rs2Data,
  input  wire [31:0]   io_regDE_immExt,
  input  wire [4:0]    io_regDE_rs1,
  input  wire [4:0]    io_regDE_rs2,
  input  wire [4:0]    io_regDE_rd,
  input  wire          io_regDE_regWrite,
  input  wire [1:0]    io_regDE_resultSrc,
  input  wire          io_regDE_memWrite,
  input  wire [2:0]    io_regDE_memOp,
  input  wire [2:0]    io_regDE_branchOp,
  input  wire [3:0]    io_regDE_aluOp,
  input  wire [0:0]    io_regDE_intSrcA,
  input  wire [0:0]    io_regDE_intSrcB,
  input  wire [0:0]    io_regDE_pcAddSrcA,
  input  wire [31:0]   io_rdDataW,
  input  wire [31:0]   io_resultM,
  output wire [31:0]   io_pcTargetE,
  output wire [0:0]    io_pcSrcE,
  output wire [4:0]    io_rs1E,
  output wire [4:0]    io_rs2E,
  output wire [4:0]    io_rdE,
  output wire          io_regWriteE,
  output wire [1:0]    io_resultSrcE,
  input  wire [1:0]    io_forwardAE,
  input  wire [1:0]    io_forwardBE,
  input  wire          clkCore,
  input  wire          rstCore
);
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;
  localparam BranchOp_pc4_ = 3'd0;
  localparam BranchOp_jump_ = 3'd1;
  localparam BranchOp_beq_ = 3'd2;
  localparam BranchOp_bne_ = 3'd3;
  localparam BranchOp_blt_ = 3'd4;
  localparam BranchOp_bge_ = 3'd5;
  localparam AluOp_add_ = 4'd0;
  localparam AluOp_sub_ = 4'd1;
  localparam AluOp_sll_ = 4'd2;
  localparam AluOp_srl_ = 4'd3;
  localparam AluOp_sra_ = 4'd4;
  localparam AluOp_xor_ = 4'd5;
  localparam AluOp_or_ = 4'd6;
  localparam AluOp_and_ = 4'd7;
  localparam AluOp_slt_ = 4'd8;
  localparam AluOp_sltu_ = 4'd9;
  localparam AluOp_srca_ = 4'd10;
  localparam AluOp_srcb_ = 4'd11;
  localparam IntSrcA_rs1_ = 1'd0;
  localparam IntSrcA_pc_ = 1'd1;
  localparam IntSrcB_rs2_ = 1'd0;
  localparam IntSrcB_imm_ = 1'd1;
  localparam PcAddSrcA_rs1_ = 1'd0;
  localparam PcAddSrcA_pc_ = 1'd1;
  localparam PcSrc_pc4_ = 1'd0;
  localparam PcSrc_pctarget_ = 1'd1;
  localparam Forward_rf_ = 2'd0;
  localparam Forward_mem_ = 2'd1;
  localparam Forward_wb_ = 2'd2;

  wire       [31:0]   alu_u_io_result;
  wire                alu_u_io_less;
  wire                alu_u_io_zero;
  wire       [0:0]    bu_u_io_pcSrc;
  wire       [31:0]   _zz_pcTarget;
  reg        [31:0]   rs1Data;
  reg        [31:0]   rs2Data;
  reg        [31:0]   isrca;
  reg        [31:0]   isrcb;
  reg        [31:0]   psrca;
  wire       [31:0]   pcTarget;
  `ifndef SYNTHESIS
  reg [31:0] io_regEM_resultSrc_string;
  reg [47:0] io_regEM_memOp_string;
  reg [31:0] io_regDE_resultSrc_string;
  reg [47:0] io_regDE_memOp_string;
  reg [39:0] io_regDE_branchOp_string;
  reg [39:0] io_regDE_aluOp_string;
  reg [31:0] io_regDE_intSrcA_string;
  reg [31:0] io_regDE_intSrcB_string;
  reg [31:0] io_regDE_pcAddSrcA_string;
  reg [71:0] io_pcSrcE_string;
  reg [31:0] io_resultSrcE_string;
  reg [31:0] io_forwardAE_string;
  reg [31:0] io_forwardBE_string;
  `endif


  assign _zz_pcTarget = (psrca + io_regDE_immExt);
  Alu alu_u (
    .io_srca   (isrca[31:0]          ), //i
    .io_srcb   (isrcb[31:0]          ), //i
    .io_aluOp  (io_regDE_aluOp[3:0]  ), //i
    .io_result (alu_u_io_result[31:0]), //o
    .io_less   (alu_u_io_less        ), //o
    .io_zero   (alu_u_io_zero        )  //o
  );
  BranchUnit bu_u (
    .io_less     (alu_u_io_less         ), //i
    .io_zero     (alu_u_io_zero         ), //i
    .io_branchOp (io_regDE_branchOp[2:0]), //i
    .io_pcSrc    (bu_u_io_pcSrc         )  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_regEM_resultSrc)
      ResultSrc_alu_ : io_regEM_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regEM_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regEM_resultSrc_string = "pc4_";
      default : io_regEM_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regEM_memOp)
      MemOp_byte_ : io_regEM_memOp_string = "byte_ ";
      MemOp_half_ : io_regEM_memOp_string = "half_ ";
      MemOp_word_ : io_regEM_memOp_string = "word_ ";
      MemOp_byteu_ : io_regEM_memOp_string = "byteu_";
      MemOp_halfu_ : io_regEM_memOp_string = "halfu_";
      default : io_regEM_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_regDE_resultSrc)
      ResultSrc_alu_ : io_regDE_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regDE_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regDE_resultSrc_string = "pc4_";
      default : io_regDE_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_memOp)
      MemOp_byte_ : io_regDE_memOp_string = "byte_ ";
      MemOp_half_ : io_regDE_memOp_string = "half_ ";
      MemOp_word_ : io_regDE_memOp_string = "word_ ";
      MemOp_byteu_ : io_regDE_memOp_string = "byteu_";
      MemOp_halfu_ : io_regDE_memOp_string = "halfu_";
      default : io_regDE_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_regDE_branchOp)
      BranchOp_pc4_ : io_regDE_branchOp_string = "pc4_ ";
      BranchOp_jump_ : io_regDE_branchOp_string = "jump_";
      BranchOp_beq_ : io_regDE_branchOp_string = "beq_ ";
      BranchOp_bne_ : io_regDE_branchOp_string = "bne_ ";
      BranchOp_blt_ : io_regDE_branchOp_string = "blt_ ";
      BranchOp_bge_ : io_regDE_branchOp_string = "bge_ ";
      default : io_regDE_branchOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_regDE_aluOp)
      AluOp_add_ : io_regDE_aluOp_string = "add_ ";
      AluOp_sub_ : io_regDE_aluOp_string = "sub_ ";
      AluOp_sll_ : io_regDE_aluOp_string = "sll_ ";
      AluOp_srl_ : io_regDE_aluOp_string = "srl_ ";
      AluOp_sra_ : io_regDE_aluOp_string = "sra_ ";
      AluOp_xor_ : io_regDE_aluOp_string = "xor_ ";
      AluOp_or_ : io_regDE_aluOp_string = "or_  ";
      AluOp_and_ : io_regDE_aluOp_string = "and_ ";
      AluOp_slt_ : io_regDE_aluOp_string = "slt_ ";
      AluOp_sltu_ : io_regDE_aluOp_string = "sltu_";
      AluOp_srca_ : io_regDE_aluOp_string = "srca_";
      AluOp_srcb_ : io_regDE_aluOp_string = "srcb_";
      default : io_regDE_aluOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_regDE_intSrcA)
      IntSrcA_rs1_ : io_regDE_intSrcA_string = "rs1_";
      IntSrcA_pc_ : io_regDE_intSrcA_string = "pc_ ";
      default : io_regDE_intSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_intSrcB)
      IntSrcB_rs2_ : io_regDE_intSrcB_string = "rs2_";
      IntSrcB_imm_ : io_regDE_intSrcB_string = "imm_";
      default : io_regDE_intSrcB_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_pcAddSrcA)
      PcAddSrcA_rs1_ : io_regDE_pcAddSrcA_string = "rs1_";
      PcAddSrcA_pc_ : io_regDE_pcAddSrcA_string = "pc_ ";
      default : io_regDE_pcAddSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(io_pcSrcE)
      PcSrc_pc4_ : io_pcSrcE_string = "pc4_     ";
      PcSrc_pctarget_ : io_pcSrcE_string = "pctarget_";
      default : io_pcSrcE_string = "?????????";
    endcase
  end
  always @(*) begin
    case(io_resultSrcE)
      ResultSrc_alu_ : io_resultSrcE_string = "alu_";
      ResultSrc_mem_ : io_resultSrcE_string = "mem_";
      ResultSrc_pc4_ : io_resultSrcE_string = "pc4_";
      default : io_resultSrcE_string = "????";
    endcase
  end
  always @(*) begin
    case(io_forwardAE)
      Forward_rf_ : io_forwardAE_string = "rf_ ";
      Forward_mem_ : io_forwardAE_string = "mem_";
      Forward_wb_ : io_forwardAE_string = "wb_ ";
      default : io_forwardAE_string = "????";
    endcase
  end
  always @(*) begin
    case(io_forwardBE)
      Forward_rf_ : io_forwardBE_string = "rf_ ";
      Forward_mem_ : io_forwardBE_string = "mem_";
      Forward_wb_ : io_forwardBE_string = "wb_ ";
      default : io_forwardBE_string = "????";
    endcase
  end
  `endif

  always @(*) begin
    case(io_forwardAE)
      Forward_rf_ : begin
        rs1Data = io_regDE_rs1Data;
      end
      Forward_mem_ : begin
        rs1Data = io_resultM;
      end
      default : begin
        rs1Data = io_rdDataW;
      end
    endcase
  end

  always @(*) begin
    case(io_forwardBE)
      Forward_rf_ : begin
        rs2Data = io_regDE_rs2Data;
      end
      Forward_mem_ : begin
        rs2Data = io_resultM;
      end
      default : begin
        rs2Data = io_rdDataW;
      end
    endcase
  end

  always @(*) begin
    case(io_regDE_intSrcA)
      IntSrcA_rs1_ : begin
        isrca = rs1Data;
      end
      default : begin
        isrca = io_regDE_pc;
      end
    endcase
  end

  always @(*) begin
    case(io_regDE_intSrcB)
      IntSrcB_rs2_ : begin
        isrcb = rs2Data;
      end
      default : begin
        isrcb = io_regDE_immExt;
      end
    endcase
  end

  always @(*) begin
    case(io_regDE_pcAddSrcA)
      PcAddSrcA_rs1_ : begin
        psrca = rs1Data;
      end
      default : begin
        psrca = io_regDE_pc;
      end
    endcase
  end

  assign pcTarget = _zz_pcTarget;
  assign io_pcTargetE = pcTarget;
  assign io_pcSrcE = bu_u_io_pcSrc;
  assign io_rs1E = io_regDE_rs1;
  assign io_rs2E = io_regDE_rs2;
  assign io_rdE = io_regDE_rd;
  assign io_regWriteE = io_regDE_regWrite;
  assign io_resultSrcE = io_regDE_resultSrc;
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      io_regEM_pcPlus4 <= 32'h0;
      io_regEM_rs2Data <= 32'h0;
      io_regEM_aluResult <= 32'h0;
      io_regEM_rd <= 5'h0;
      io_regEM_regWrite <= 1'b0;
      io_regEM_resultSrc <= ResultSrc_alu_;
      io_regEM_memWrite <= 1'b0;
      io_regEM_memOp <= MemOp_word_;
    end else begin
      io_regEM_pcPlus4 <= io_regDE_pcPlus4;
      io_regEM_rs2Data <= rs2Data;
      io_regEM_aluResult <= alu_u_io_result;
      io_regEM_rd <= io_regDE_rd;
      io_regEM_regWrite <= io_regDE_regWrite;
      io_regEM_resultSrc <= io_regDE_resultSrc;
      io_regEM_memWrite <= io_regDE_memWrite;
      io_regEM_memOp <= io_regDE_memOp;
    end
  end


endmodule

module StageDecode (
  output reg  [31:0]   io_regDE_pc,
  output reg  [31:0]   io_regDE_pcPlus4,
  output reg  [31:0]   io_regDE_rs1Data,
  output reg  [31:0]   io_regDE_rs2Data,
  output reg  [31:0]   io_regDE_immExt,
  output reg  [4:0]    io_regDE_rs1,
  output reg  [4:0]    io_regDE_rs2,
  output reg  [4:0]    io_regDE_rd,
  output reg           io_regDE_regWrite,
  output reg  [1:0]    io_regDE_resultSrc,
  output reg           io_regDE_memWrite,
  output reg  [2:0]    io_regDE_memOp,
  output reg  [2:0]    io_regDE_branchOp,
  output reg  [3:0]    io_regDE_aluOp,
  output reg  [0:0]    io_regDE_intSrcA,
  output reg  [0:0]    io_regDE_intSrcB,
  output reg  [0:0]    io_regDE_pcAddSrcA,
  input  wire [31:0]   io_regFD_instr,
  input  wire [31:0]   io_regFD_pc,
  input  wire [31:0]   io_regFD_pcPlus4,
  input  wire [31:0]   io_rdDataW,
  input  wire [4:0]    io_rdW,
  input  wire          io_regWriteW,
  output wire [4:0]    io_rs1D,
  output wire [4:0]    io_rs2D,
  input  wire          io_flushDE,
  input  wire          clkCore,
  input  wire          rstCore
);
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;
  localparam BranchOp_pc4_ = 3'd0;
  localparam BranchOp_jump_ = 3'd1;
  localparam BranchOp_beq_ = 3'd2;
  localparam BranchOp_bne_ = 3'd3;
  localparam BranchOp_blt_ = 3'd4;
  localparam BranchOp_bge_ = 3'd5;
  localparam AluOp_add_ = 4'd0;
  localparam AluOp_sub_ = 4'd1;
  localparam AluOp_sll_ = 4'd2;
  localparam AluOp_srl_ = 4'd3;
  localparam AluOp_sra_ = 4'd4;
  localparam AluOp_xor_ = 4'd5;
  localparam AluOp_or_ = 4'd6;
  localparam AluOp_and_ = 4'd7;
  localparam AluOp_slt_ = 4'd8;
  localparam AluOp_sltu_ = 4'd9;
  localparam AluOp_srca_ = 4'd10;
  localparam AluOp_srcb_ = 4'd11;
  localparam IntSrcA_rs1_ = 1'd0;
  localparam IntSrcA_pc_ = 1'd1;
  localparam IntSrcB_rs2_ = 1'd0;
  localparam IntSrcB_imm_ = 1'd1;
  localparam PcAddSrcA_rs1_ = 1'd0;
  localparam PcAddSrcA_pc_ = 1'd1;
  localparam ImmSrc_i1_ = 3'd0;
  localparam ImmSrc_i2_ = 3'd1;
  localparam ImmSrc_s_ = 3'd2;
  localparam ImmSrc_b_ = 3'd3;
  localparam ImmSrc_j_ = 3'd4;
  localparam ImmSrc_u_ = 3'd5;

  wire       [1:0]    cu_u_io_resultSrc;
  wire                cu_u_io_regWrite;
  wire                cu_u_io_memWrite;
  wire       [2:0]    cu_u_io_memOp;
  wire       [2:0]    cu_u_io_branchOp;
  wire       [3:0]    cu_u_io_aluOp;
  wire       [0:0]    cu_u_io_intSrcA;
  wire       [0:0]    cu_u_io_intSrcB;
  wire       [0:0]    cu_u_io_pcAddSrcA;
  wire       [2:0]    cu_u_io_immSrc;
  wire       [31:0]   rf_u_io_rs1Data;
  wire       [31:0]   rf_u_io_rs2Data;
  wire       [31:0]   ext_u_io_immExt;
  wire       [6:0]    opcode;
  wire       [2:0]    funct3;
  wire       [6:0]    funct7;
  wire       [4:0]    rs1;
  wire       [4:0]    rs2;
  wire       [4:0]    rd;
  wire       [1:0]    _zz_io_regDE_resultSrc;
  wire       [2:0]    _zz_io_regDE_memOp;
  wire       [2:0]    _zz_io_regDE_branchOp;
  wire       [3:0]    _zz_io_regDE_aluOp;
  wire       [0:0]    _zz_io_regDE_intSrcA;
  wire       [0:0]    _zz_io_regDE_intSrcB;
  wire       [0:0]    _zz_io_regDE_pcAddSrcA;
  `ifndef SYNTHESIS
  reg [31:0] io_regDE_resultSrc_string;
  reg [47:0] io_regDE_memOp_string;
  reg [39:0] io_regDE_branchOp_string;
  reg [39:0] io_regDE_aluOp_string;
  reg [31:0] io_regDE_intSrcA_string;
  reg [31:0] io_regDE_intSrcB_string;
  reg [31:0] io_regDE_pcAddSrcA_string;
  reg [31:0] _zz_io_regDE_resultSrc_string;
  reg [47:0] _zz_io_regDE_memOp_string;
  reg [39:0] _zz_io_regDE_branchOp_string;
  reg [39:0] _zz_io_regDE_aluOp_string;
  reg [31:0] _zz_io_regDE_intSrcA_string;
  reg [31:0] _zz_io_regDE_intSrcB_string;
  reg [31:0] _zz_io_regDE_pcAddSrcA_string;
  `endif


  ControlUnit cu_u (
    .io_opcode    (opcode[6:0]           ), //i
    .io_funct3    (funct3[2:0]           ), //i
    .io_funct7    (funct7[6:0]           ), //i
    .io_resultSrc (cu_u_io_resultSrc[1:0]), //o
    .io_regWrite  (cu_u_io_regWrite      ), //o
    .io_memWrite  (cu_u_io_memWrite      ), //o
    .io_memOp     (cu_u_io_memOp[2:0]    ), //o
    .io_branchOp  (cu_u_io_branchOp[2:0] ), //o
    .io_aluOp     (cu_u_io_aluOp[3:0]    ), //o
    .io_intSrcA   (cu_u_io_intSrcA       ), //o
    .io_intSrcB   (cu_u_io_intSrcB       ), //o
    .io_pcAddSrcA (cu_u_io_pcAddSrcA     ), //o
    .io_immSrc    (cu_u_io_immSrc[2:0]   )  //o
  );
  RegisterFile rf_u (
    .io_rs1      (rs1[4:0]             ), //i
    .io_rs2      (rs2[4:0]             ), //i
    .io_rd       (io_rdW[4:0]          ), //i
    .io_rs1Data  (rf_u_io_rs1Data[31:0]), //o
    .io_rs2Data  (rf_u_io_rs2Data[31:0]), //o
    .io_rdData   (io_rdDataW[31:0]     ), //i
    .io_regWrite (io_regWriteW         ), //i
    .clkCore     (clkCore              ), //i
    .rstCore     (rstCore              )  //i
  );
  ImmExtend ext_u (
    .io_instr  (io_regFD_instr[31:0] ), //i
    .io_immSrc (cu_u_io_immSrc[2:0]  ), //i
    .io_immExt (ext_u_io_immExt[31:0])  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_regDE_resultSrc)
      ResultSrc_alu_ : io_regDE_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_regDE_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_regDE_resultSrc_string = "pc4_";
      default : io_regDE_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_memOp)
      MemOp_byte_ : io_regDE_memOp_string = "byte_ ";
      MemOp_half_ : io_regDE_memOp_string = "half_ ";
      MemOp_word_ : io_regDE_memOp_string = "word_ ";
      MemOp_byteu_ : io_regDE_memOp_string = "byteu_";
      MemOp_halfu_ : io_regDE_memOp_string = "halfu_";
      default : io_regDE_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_regDE_branchOp)
      BranchOp_pc4_ : io_regDE_branchOp_string = "pc4_ ";
      BranchOp_jump_ : io_regDE_branchOp_string = "jump_";
      BranchOp_beq_ : io_regDE_branchOp_string = "beq_ ";
      BranchOp_bne_ : io_regDE_branchOp_string = "bne_ ";
      BranchOp_blt_ : io_regDE_branchOp_string = "blt_ ";
      BranchOp_bge_ : io_regDE_branchOp_string = "bge_ ";
      default : io_regDE_branchOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_regDE_aluOp)
      AluOp_add_ : io_regDE_aluOp_string = "add_ ";
      AluOp_sub_ : io_regDE_aluOp_string = "sub_ ";
      AluOp_sll_ : io_regDE_aluOp_string = "sll_ ";
      AluOp_srl_ : io_regDE_aluOp_string = "srl_ ";
      AluOp_sra_ : io_regDE_aluOp_string = "sra_ ";
      AluOp_xor_ : io_regDE_aluOp_string = "xor_ ";
      AluOp_or_ : io_regDE_aluOp_string = "or_  ";
      AluOp_and_ : io_regDE_aluOp_string = "and_ ";
      AluOp_slt_ : io_regDE_aluOp_string = "slt_ ";
      AluOp_sltu_ : io_regDE_aluOp_string = "sltu_";
      AluOp_srca_ : io_regDE_aluOp_string = "srca_";
      AluOp_srcb_ : io_regDE_aluOp_string = "srcb_";
      default : io_regDE_aluOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_regDE_intSrcA)
      IntSrcA_rs1_ : io_regDE_intSrcA_string = "rs1_";
      IntSrcA_pc_ : io_regDE_intSrcA_string = "pc_ ";
      default : io_regDE_intSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_intSrcB)
      IntSrcB_rs2_ : io_regDE_intSrcB_string = "rs2_";
      IntSrcB_imm_ : io_regDE_intSrcB_string = "imm_";
      default : io_regDE_intSrcB_string = "????";
    endcase
  end
  always @(*) begin
    case(io_regDE_pcAddSrcA)
      PcAddSrcA_rs1_ : io_regDE_pcAddSrcA_string = "rs1_";
      PcAddSrcA_pc_ : io_regDE_pcAddSrcA_string = "pc_ ";
      default : io_regDE_pcAddSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_resultSrc)
      ResultSrc_alu_ : _zz_io_regDE_resultSrc_string = "alu_";
      ResultSrc_mem_ : _zz_io_regDE_resultSrc_string = "mem_";
      ResultSrc_pc4_ : _zz_io_regDE_resultSrc_string = "pc4_";
      default : _zz_io_regDE_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_memOp)
      MemOp_byte_ : _zz_io_regDE_memOp_string = "byte_ ";
      MemOp_half_ : _zz_io_regDE_memOp_string = "half_ ";
      MemOp_word_ : _zz_io_regDE_memOp_string = "word_ ";
      MemOp_byteu_ : _zz_io_regDE_memOp_string = "byteu_";
      MemOp_halfu_ : _zz_io_regDE_memOp_string = "halfu_";
      default : _zz_io_regDE_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_branchOp)
      BranchOp_pc4_ : _zz_io_regDE_branchOp_string = "pc4_ ";
      BranchOp_jump_ : _zz_io_regDE_branchOp_string = "jump_";
      BranchOp_beq_ : _zz_io_regDE_branchOp_string = "beq_ ";
      BranchOp_bne_ : _zz_io_regDE_branchOp_string = "bne_ ";
      BranchOp_blt_ : _zz_io_regDE_branchOp_string = "blt_ ";
      BranchOp_bge_ : _zz_io_regDE_branchOp_string = "bge_ ";
      default : _zz_io_regDE_branchOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_aluOp)
      AluOp_add_ : _zz_io_regDE_aluOp_string = "add_ ";
      AluOp_sub_ : _zz_io_regDE_aluOp_string = "sub_ ";
      AluOp_sll_ : _zz_io_regDE_aluOp_string = "sll_ ";
      AluOp_srl_ : _zz_io_regDE_aluOp_string = "srl_ ";
      AluOp_sra_ : _zz_io_regDE_aluOp_string = "sra_ ";
      AluOp_xor_ : _zz_io_regDE_aluOp_string = "xor_ ";
      AluOp_or_ : _zz_io_regDE_aluOp_string = "or_  ";
      AluOp_and_ : _zz_io_regDE_aluOp_string = "and_ ";
      AluOp_slt_ : _zz_io_regDE_aluOp_string = "slt_ ";
      AluOp_sltu_ : _zz_io_regDE_aluOp_string = "sltu_";
      AluOp_srca_ : _zz_io_regDE_aluOp_string = "srca_";
      AluOp_srcb_ : _zz_io_regDE_aluOp_string = "srcb_";
      default : _zz_io_regDE_aluOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_intSrcA)
      IntSrcA_rs1_ : _zz_io_regDE_intSrcA_string = "rs1_";
      IntSrcA_pc_ : _zz_io_regDE_intSrcA_string = "pc_ ";
      default : _zz_io_regDE_intSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_intSrcB)
      IntSrcB_rs2_ : _zz_io_regDE_intSrcB_string = "rs2_";
      IntSrcB_imm_ : _zz_io_regDE_intSrcB_string = "imm_";
      default : _zz_io_regDE_intSrcB_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_io_regDE_pcAddSrcA)
      PcAddSrcA_rs1_ : _zz_io_regDE_pcAddSrcA_string = "rs1_";
      PcAddSrcA_pc_ : _zz_io_regDE_pcAddSrcA_string = "pc_ ";
      default : _zz_io_regDE_pcAddSrcA_string = "????";
    endcase
  end
  `endif

  assign opcode = io_regFD_instr[6 : 0];
  assign funct3 = io_regFD_instr[14 : 12];
  assign funct7 = io_regFD_instr[31 : 25];
  assign rs1 = io_regFD_instr[19 : 15];
  assign rs2 = io_regFD_instr[24 : 20];
  assign rd = io_regFD_instr[11 : 7];
  assign _zz_io_regDE_resultSrc = (io_flushDE ? ResultSrc_alu_ : cu_u_io_resultSrc);
  assign _zz_io_regDE_memOp = (io_flushDE ? MemOp_word_ : cu_u_io_memOp);
  assign _zz_io_regDE_branchOp = (io_flushDE ? BranchOp_pc4_ : cu_u_io_branchOp);
  assign _zz_io_regDE_aluOp = (io_flushDE ? AluOp_add_ : cu_u_io_aluOp);
  assign _zz_io_regDE_intSrcA = (io_flushDE ? IntSrcA_rs1_ : cu_u_io_intSrcA);
  assign _zz_io_regDE_intSrcB = (io_flushDE ? IntSrcB_rs2_ : cu_u_io_intSrcB);
  assign _zz_io_regDE_pcAddSrcA = (io_flushDE ? PcAddSrcA_pc_ : cu_u_io_pcAddSrcA);
  assign io_rs1D = rs1;
  assign io_rs2D = rs2;
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      io_regDE_pc <= 32'h0;
      io_regDE_pcPlus4 <= 32'h0;
      io_regDE_rs1Data <= 32'h0;
      io_regDE_rs2Data <= 32'h0;
      io_regDE_immExt <= 32'h0;
      io_regDE_rs1 <= 5'h0;
      io_regDE_rs2 <= 5'h0;
      io_regDE_rd <= 5'h0;
      io_regDE_regWrite <= 1'b0;
      io_regDE_resultSrc <= ResultSrc_alu_;
      io_regDE_memWrite <= 1'b0;
      io_regDE_memOp <= MemOp_word_;
      io_regDE_branchOp <= BranchOp_pc4_;
      io_regDE_aluOp <= AluOp_add_;
      io_regDE_intSrcA <= IntSrcA_rs1_;
      io_regDE_intSrcB <= IntSrcB_rs2_;
      io_regDE_pcAddSrcA <= PcAddSrcA_pc_;
    end else begin
      io_regDE_pc <= (io_flushDE ? 32'h0 : io_regFD_pc);
      io_regDE_pcPlus4 <= (io_flushDE ? 32'h0 : io_regFD_pcPlus4);
      io_regDE_rs1Data <= (io_flushDE ? 32'h0 : rf_u_io_rs1Data);
      io_regDE_rs2Data <= (io_flushDE ? 32'h0 : rf_u_io_rs2Data);
      io_regDE_immExt <= (io_flushDE ? 32'h0 : ext_u_io_immExt);
      io_regDE_rs1 <= (io_flushDE ? 5'h0 : rs1);
      io_regDE_rs2 <= (io_flushDE ? 5'h0 : rs2);
      io_regDE_rd <= (io_flushDE ? 5'h0 : rd);
      io_regDE_regWrite <= (io_flushDE ? 1'b0 : cu_u_io_regWrite);
      io_regDE_resultSrc <= _zz_io_regDE_resultSrc;
      io_regDE_memWrite <= (io_flushDE ? 1'b0 : cu_u_io_memWrite);
      io_regDE_memOp <= _zz_io_regDE_memOp;
      io_regDE_branchOp <= _zz_io_regDE_branchOp;
      io_regDE_aluOp <= _zz_io_regDE_aluOp;
      io_regDE_intSrcA <= _zz_io_regDE_intSrcA;
      io_regDE_intSrcB <= _zz_io_regDE_intSrcB;
      io_regDE_pcAddSrcA <= _zz_io_regDE_pcAddSrcA;
    end
  end


endmodule

module StageFetch (
  output wire [31:0]   io_regFD_instr,
  output wire [31:0]   io_regFD_pc,
  output wire [31:0]   io_regFD_pcPlus4,
  input  wire [0:0]    io_pcSrcE,
  input  wire [31:0]   io_pcTargetE,
  input  wire          io_stallFD,
  input  wire          io_flushFD,
  output wire [31:0]   io_imem_addr,
  input  wire [31:0]   io_imem_dataRd,
  output wire          io_imem_select,
  input  wire          io_imem_failed,
  output wire          io_fetchDeny,
  input  wire          clkCore,
  input  wire          rstCore
);
  localparam PcSrc_pc4_ = 1'd0;
  localparam PcSrc_pctarget_ = 1'd1;

  wire       [31:0]   _zz_pcPlus4;
  reg        [31:0]   pcReg;
  wire       [31:0]   pcPlus4;
  reg        [31:0]   pcNext;
  wire                when_StageFetch_l45;
  `ifndef SYNTHESIS
  reg [71:0] io_pcSrcE_string;
  `endif


  assign _zz_pcPlus4 = (pcReg + 32'h00000004);
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_pcSrcE)
      PcSrc_pc4_ : io_pcSrcE_string = "pc4_     ";
      PcSrc_pctarget_ : io_pcSrcE_string = "pctarget_";
      default : io_pcSrcE_string = "?????????";
    endcase
  end
  `endif

  assign pcPlus4 = _zz_pcPlus4;
  always @(*) begin
    case(io_pcSrcE)
      PcSrc_pc4_ : begin
        pcNext = pcPlus4;
      end
      default : begin
        pcNext = io_pcTargetE;
      end
    endcase
  end

  assign when_StageFetch_l45 = (! io_stallFD);
  assign io_imem_addr = (io_stallFD ? pcReg : pcNext);
  assign io_imem_select = 1'b1;
  assign io_fetchDeny = io_imem_failed;
  assign io_regFD_pc = pcReg;
  assign io_regFD_pcPlus4 = pcPlus4;
  assign io_regFD_instr = (io_flushFD ? 32'h0 : io_imem_dataRd);
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      pcReg <= 32'h0;
    end else begin
      if(when_StageFetch_l45) begin
        pcReg <= pcNext;
      end
    end
  end


endmodule

module SpiDriver (
  input  wire          io_divisorRd_enable,
  output wire [15:0]   io_divisorRd_data,
  input  wire          io_divisorWr_enable,
  input  wire [15:0]   io_divisorWr_data,
  input  wire          io_mosiWr_enable,
  input  wire [7:0]    io_mosiWr_data,
  input  wire          io_misoRd_enable,
  output wire [7:0]    io_misoRd_data,
  input  wire          io_selRd_enable,
  output wire          io_selRd_data,
  input  wire          io_selWr_enable,
  input  wire          io_selWr_data,
  input  wire          io_busyRd_enable,
  output wire          io_busyRd_data,
  output wire          io_spi_sel,
  output wire          io_spi_sclk,
  output wire          io_spi_mosi,
  input  wire          io_spi_miso,
  input  wire          clkCore,
  input  wire          rstSoc
);
  localparam SpiState_idle_ = 1'd0;
  localparam SpiState_data_ = 1'd1;

  wire       [15:0]   _zz_sflag;
  wire       [14:0]   _zz_sflag_1;
  wire       [14:0]   _zz_sflag_2;
  reg        [7:0]    mosi;
  reg        [7:0]    miso;
  reg        [15:0]   divisor;
  reg                 sel;
  reg                 busy;
  reg        [15:0]   scounter;
  wire                sflag;
  wire                when_SpiDriver_l37;
  reg                 sclk;
  reg        [0:0]    sarea_state;
  reg        [2:0]    sarea_dataIndex;
  wire                sarea_dataDone;
  wire                when_SpiDriver_l58;
  wire                edgeBeg;
  wire                edgeEnd;
  wire                edgeDat;
  `ifndef SYNTHESIS
  reg [39:0] sarea_state_string;
  `endif


  assign _zz_sflag_1 = (_zz_sflag_2 - 15'h0001);
  assign _zz_sflag = {1'd0, _zz_sflag_1};
  assign _zz_sflag_2 = (divisor >>> 1'd1);
  `ifndef SYNTHESIS
  always @(*) begin
    case(sarea_state)
      SpiState_idle_ : sarea_state_string = "idle_";
      SpiState_data_ : sarea_state_string = "data_";
      default : sarea_state_string = "?????";
    endcase
  end
  `endif

  assign sflag = (scounter == _zz_sflag);
  assign when_SpiDriver_l37 = (sflag || io_divisorWr_enable);
  assign sarea_dataDone = (sarea_dataIndex == 3'b000);
  assign when_SpiDriver_l58 = (sarea_state == SpiState_data_);
  assign edgeBeg = ((sarea_state == SpiState_idle_) && io_mosiWr_enable);
  assign edgeEnd = ((((sarea_state == SpiState_data_) && sarea_dataDone) && sflag) && (! sclk));
  assign edgeDat = (((sarea_state == SpiState_data_) && sflag) && sclk);
  assign io_busyRd_data = busy;
  assign io_misoRd_data = miso;
  assign io_selRd_data = sel;
  assign io_divisorRd_data = divisor;
  assign io_spi_sclk = ((sarea_state == SpiState_idle_) ? 1'b1 : (! sclk));
  assign io_spi_mosi = mosi[sarea_dataIndex];
  assign io_spi_sel = sel;
  always @(posedge clkCore or posedge rstSoc) begin
    if(rstSoc) begin
      mosi <= 8'h0;
      miso <= 8'h0;
      divisor <= 16'h0;
      sel <= 1'b1;
      busy <= 1'b0;
      scounter <= 16'h0;
      sclk <= 1'b0;
    end else begin
      if(when_SpiDriver_l37) begin
        scounter <= 16'h0;
      end else begin
        scounter <= (scounter + 16'h0001);
      end
      if(sflag) begin
        sclk <= (! sclk);
      end
      if(edgeBeg) begin
        busy <= 1'b1;
      end
      if(edgeEnd) begin
        busy <= 1'b0;
      end
      if(edgeBeg) begin
        mosi <= io_mosiWr_data;
      end
      if(edgeDat) begin
        miso[sarea_dataIndex] <= io_spi_miso;
      end
      if(io_divisorWr_enable) begin
        divisor <= io_divisorWr_data;
      end
      if(io_selWr_enable) begin
        sel <= io_selWr_data;
      end
    end
  end

  always @(posedge sclk or posedge rstSoc) begin
    if(rstSoc) begin
      sarea_state <= SpiState_idle_;
      sarea_dataIndex <= 3'b111;
    end else begin
      if(when_SpiDriver_l58) begin
        sarea_dataIndex <= (sarea_dataIndex - 3'b001);
      end
      case(sarea_state)
        SpiState_idle_ : begin
          if(busy) begin
            sarea_state <= SpiState_data_;
          end
        end
        default : begin
          if(sarea_dataDone) begin
            sarea_state <= SpiState_idle_;
          end
        end
      endcase
    end
  end


endmodule

//SramHl55_1 replaced by SramHl55

module SramHl55 (
  input  wire [10:0]   io_mcmd_addr,
  input  wire          io_mcmd_enable,
  input  wire          io_mcmd_write,
  input  wire [3:0]    io_mcmd_mask,
  input  wire [31:0]   io_mcmd_dataWr,
  output wire [31:0]   io_mcmd_dataRd,
  input  wire          clkCore
);

  wire       [31:0]   u_Q;
  reg        [31:0]   wem;

  mem_hl55_2048x32_sp_m1 u (
    .CLK   (clkCore             ), //i
    .ME    (io_mcmd_enable      ), //i
    .WE    (io_mcmd_write       ), //i
    .ADR   (io_mcmd_addr[10:0]  ), //i
    .D     (io_mcmd_dataWr[31:0]), //i
    .WEM   (wem[31:0]           ), //i
    .Q     (u_Q[31:0]           ), //o
    .TEST1 (1'b0                ), //i
    .RME   (1'b0                ), //i
    .RM    (4'b0000             )  //i
  );
  always @(*) begin
    wem[7 : 0] = (io_mcmd_mask[0] ? 8'hff : 8'h0);
    wem[15 : 8] = (io_mcmd_mask[1] ? 8'hff : 8'h0);
    wem[23 : 16] = (io_mcmd_mask[2] ? 8'hff : 8'h0);
    wem[31 : 24] = (io_mcmd_mask[3] ? 8'hff : 8'h0);
  end

  assign io_mcmd_dataRd = u_Q;

endmodule

module BranchUnit (
  input  wire          io_less,
  input  wire          io_zero,
  input  wire [2:0]    io_branchOp,
  output reg  [0:0]    io_pcSrc
);
  localparam BranchOp_pc4_ = 3'd0;
  localparam BranchOp_jump_ = 3'd1;
  localparam BranchOp_beq_ = 3'd2;
  localparam BranchOp_bne_ = 3'd3;
  localparam BranchOp_blt_ = 3'd4;
  localparam BranchOp_bge_ = 3'd5;
  localparam PcSrc_pc4_ = 1'd0;
  localparam PcSrc_pctarget_ = 1'd1;

  wire       [0:0]    _zz_io_pcSrc;
  wire       [0:0]    _zz_io_pcSrc_1;
  wire       [0:0]    _zz_io_pcSrc_2;
  wire       [0:0]    _zz_io_pcSrc_3;
  `ifndef SYNTHESIS
  reg [39:0] io_branchOp_string;
  reg [71:0] io_pcSrc_string;
  reg [71:0] _zz_io_pcSrc_string;
  reg [71:0] _zz_io_pcSrc_1_string;
  reg [71:0] _zz_io_pcSrc_2_string;
  reg [71:0] _zz_io_pcSrc_3_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(io_branchOp)
      BranchOp_pc4_ : io_branchOp_string = "pc4_ ";
      BranchOp_jump_ : io_branchOp_string = "jump_";
      BranchOp_beq_ : io_branchOp_string = "beq_ ";
      BranchOp_bne_ : io_branchOp_string = "bne_ ";
      BranchOp_blt_ : io_branchOp_string = "blt_ ";
      BranchOp_bge_ : io_branchOp_string = "bge_ ";
      default : io_branchOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_pcSrc)
      PcSrc_pc4_ : io_pcSrc_string = "pc4_     ";
      PcSrc_pctarget_ : io_pcSrc_string = "pctarget_";
      default : io_pcSrc_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pcSrc)
      PcSrc_pc4_ : _zz_io_pcSrc_string = "pc4_     ";
      PcSrc_pctarget_ : _zz_io_pcSrc_string = "pctarget_";
      default : _zz_io_pcSrc_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pcSrc_1)
      PcSrc_pc4_ : _zz_io_pcSrc_1_string = "pc4_     ";
      PcSrc_pctarget_ : _zz_io_pcSrc_1_string = "pctarget_";
      default : _zz_io_pcSrc_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pcSrc_2)
      PcSrc_pc4_ : _zz_io_pcSrc_2_string = "pc4_     ";
      PcSrc_pctarget_ : _zz_io_pcSrc_2_string = "pctarget_";
      default : _zz_io_pcSrc_2_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_io_pcSrc_3)
      PcSrc_pc4_ : _zz_io_pcSrc_3_string = "pc4_     ";
      PcSrc_pctarget_ : _zz_io_pcSrc_3_string = "pctarget_";
      default : _zz_io_pcSrc_3_string = "?????????";
    endcase
  end
  `endif

  always @(*) begin
    case(io_branchOp)
      BranchOp_pc4_ : begin
        io_pcSrc = PcSrc_pc4_;
      end
      BranchOp_jump_ : begin
        io_pcSrc = PcSrc_pctarget_;
      end
      BranchOp_beq_ : begin
        io_pcSrc = _zz_io_pcSrc;
      end
      BranchOp_bne_ : begin
        io_pcSrc = _zz_io_pcSrc_1;
      end
      BranchOp_blt_ : begin
        io_pcSrc = _zz_io_pcSrc_2;
      end
      default : begin
        io_pcSrc = _zz_io_pcSrc_3;
      end
    endcase
  end

  assign _zz_io_pcSrc = (io_zero ? PcSrc_pctarget_ : PcSrc_pc4_);
  assign _zz_io_pcSrc_1 = (io_zero ? PcSrc_pc4_ : PcSrc_pctarget_);
  assign _zz_io_pcSrc_2 = (io_less ? PcSrc_pctarget_ : PcSrc_pc4_);
  assign _zz_io_pcSrc_3 = (io_less ? PcSrc_pc4_ : PcSrc_pctarget_);

endmodule

module Alu (
  input  wire [31:0]   io_srca,
  input  wire [31:0]   io_srcb,
  input  wire [3:0]    io_aluOp,
  output reg  [31:0]   io_result,
  output wire          io_less,
  output wire          io_zero
);
  localparam AluOp_add_ = 4'd0;
  localparam AluOp_sub_ = 4'd1;
  localparam AluOp_sll_ = 4'd2;
  localparam AluOp_srl_ = 4'd3;
  localparam AluOp_sra_ = 4'd4;
  localparam AluOp_xor_ = 4'd5;
  localparam AluOp_or_ = 4'd6;
  localparam AluOp_and_ = 4'd7;
  localparam AluOp_slt_ = 4'd8;
  localparam AluOp_sltu_ = 4'd9;
  localparam AluOp_srca_ = 4'd10;
  localparam AluOp_srcb_ = 4'd11;

  wire       [31:0]   _zz_io_result;
  wire       [31:0]   _zz_io_result_1;
  wire       [31:0]   _zz_io_result_2;
  wire       [31:0]   _zz_io_result_3;
  wire       [31:0]   _zz_io_result_4;
  wire       [0:0]    _zz_io_result_5;
  wire       [0:0]    _zz_io_result_6;
  wire       [31:0]   ua;
  wire       [31:0]   ub;
  wire       [31:0]   sa;
  wire       [31:0]   sb;
  wire       [4:0]    shift;
  `ifndef SYNTHESIS
  reg [39:0] io_aluOp_string;
  `endif


  assign _zz_io_result = (ua + ub);
  assign _zz_io_result_1 = (ua - ub);
  assign _zz_io_result_2 = (ua <<< shift);
  assign _zz_io_result_3 = (ua >>> shift);
  assign _zz_io_result_4 = ($signed(sa) >>> shift);
  assign _zz_io_result_5 = ($signed(sa) < $signed(sb));
  assign _zz_io_result_6 = (ua < ub);
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_aluOp)
      AluOp_add_ : io_aluOp_string = "add_ ";
      AluOp_sub_ : io_aluOp_string = "sub_ ";
      AluOp_sll_ : io_aluOp_string = "sll_ ";
      AluOp_srl_ : io_aluOp_string = "srl_ ";
      AluOp_sra_ : io_aluOp_string = "sra_ ";
      AluOp_xor_ : io_aluOp_string = "xor_ ";
      AluOp_or_ : io_aluOp_string = "or_  ";
      AluOp_and_ : io_aluOp_string = "and_ ";
      AluOp_slt_ : io_aluOp_string = "slt_ ";
      AluOp_sltu_ : io_aluOp_string = "sltu_";
      AluOp_srca_ : io_aluOp_string = "srca_";
      AluOp_srcb_ : io_aluOp_string = "srcb_";
      default : io_aluOp_string = "?????";
    endcase
  end
  `endif

  assign ua = io_srca;
  assign ub = io_srcb;
  assign sa = io_srca;
  assign sb = io_srcb;
  assign shift = io_srcb[4 : 0];
  always @(*) begin
    case(io_aluOp)
      AluOp_add_ : begin
        io_result = _zz_io_result;
      end
      AluOp_sub_ : begin
        io_result = _zz_io_result_1;
      end
      AluOp_sll_ : begin
        io_result = _zz_io_result_2;
      end
      AluOp_srl_ : begin
        io_result = _zz_io_result_3;
      end
      AluOp_sra_ : begin
        io_result = _zz_io_result_4;
      end
      AluOp_xor_ : begin
        io_result = (ua ^ ub);
      end
      AluOp_or_ : begin
        io_result = (ua | ub);
      end
      AluOp_and_ : begin
        io_result = (ua & ub);
      end
      AluOp_slt_ : begin
        io_result = {31'd0, _zz_io_result_5};
      end
      AluOp_sltu_ : begin
        io_result = {31'd0, _zz_io_result_6};
      end
      AluOp_srca_ : begin
        io_result = ua;
      end
      default : begin
        io_result = ub;
      end
    endcase
  end

  assign io_less = io_result[0];
  assign io_zero = (io_result == 32'h0);

endmodule

module ImmExtend (
  input  wire [31:0]   io_instr,
  input  wire [2:0]    io_immSrc,
  output reg  [31:0]   io_immExt
);
  localparam ImmSrc_i1_ = 3'd0;
  localparam ImmSrc_i2_ = 3'd1;
  localparam ImmSrc_s_ = 3'd2;
  localparam ImmSrc_b_ = 3'd3;
  localparam ImmSrc_j_ = 3'd4;
  localparam ImmSrc_u_ = 3'd5;

  wire       [31:0]   _zz_io_immExt;
  wire       [11:0]   _zz_io_immExt_1;
  wire       [31:0]   _zz_io_immExt_2;
  wire       [4:0]    _zz_io_immExt_3;
  wire       [31:0]   _zz_io_immExt_4;
  wire       [11:0]   _zz_io_immExt_5;
  wire       [31:0]   _zz_io_immExt_6;
  wire       [12:0]   _zz_io_immExt_7;
  wire       [31:0]   _zz_io_immExt_8;
  wire       [20:0]   _zz_io_immExt_9;
  `ifndef SYNTHESIS
  reg [23:0] io_immSrc_string;
  `endif


  assign _zz_io_immExt_1 = io_instr[31 : 20];
  assign _zz_io_immExt = {{20{_zz_io_immExt_1[11]}}, _zz_io_immExt_1};
  assign _zz_io_immExt_3 = io_instr[24 : 20];
  assign _zz_io_immExt_2 = {27'd0, _zz_io_immExt_3};
  assign _zz_io_immExt_5 = {io_instr[31 : 25],io_instr[11 : 7]};
  assign _zz_io_immExt_4 = {{20{_zz_io_immExt_5[11]}}, _zz_io_immExt_5};
  assign _zz_io_immExt_7 = {{{{io_instr[31],io_instr[7]},io_instr[30 : 25]},io_instr[11 : 8]},1'b0};
  assign _zz_io_immExt_6 = {{19{_zz_io_immExt_7[12]}}, _zz_io_immExt_7};
  assign _zz_io_immExt_9 = {{{{io_instr[31],io_instr[19 : 12]},io_instr[20]},io_instr[30 : 21]},1'b0};
  assign _zz_io_immExt_8 = {{11{_zz_io_immExt_9[20]}}, _zz_io_immExt_9};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_immSrc)
      ImmSrc_i1_ : io_immSrc_string = "i1_";
      ImmSrc_i2_ : io_immSrc_string = "i2_";
      ImmSrc_s_ : io_immSrc_string = "s_ ";
      ImmSrc_b_ : io_immSrc_string = "b_ ";
      ImmSrc_j_ : io_immSrc_string = "j_ ";
      ImmSrc_u_ : io_immSrc_string = "u_ ";
      default : io_immSrc_string = "???";
    endcase
  end
  `endif

  always @(*) begin
    case(io_immSrc)
      ImmSrc_i1_ : begin
        io_immExt = _zz_io_immExt;
      end
      ImmSrc_i2_ : begin
        io_immExt = _zz_io_immExt_2;
      end
      ImmSrc_s_ : begin
        io_immExt = _zz_io_immExt_4;
      end
      ImmSrc_b_ : begin
        io_immExt = _zz_io_immExt_6;
      end
      ImmSrc_j_ : begin
        io_immExt = _zz_io_immExt_8;
      end
      default : begin
        io_immExt = {io_instr[31 : 12],12'h0};
      end
    endcase
  end


endmodule

module RegisterFile (
  input  wire [4:0]    io_rs1,
  input  wire [4:0]    io_rs2,
  input  wire [4:0]    io_rd,
  output reg  [31:0]   io_rs1Data,
  output reg  [31:0]   io_rs2Data,
  input  wire [31:0]   io_rdData,
  input  wire          io_regWrite,
  input  wire          clkCore,
  input  wire          rstCore
);

  wire       [0:0]    _zz_io_rs1Data;
  reg        [31:0]   _zz_io_rs1Data_1;
  wire       [4:0]    _zz_io_rs1Data_2;
  wire       [0:0]    _zz_io_rs2Data;
  reg        [31:0]   _zz_io_rs2Data_1;
  wire       [4:0]    _zz_io_rs2Data_2;
  reg        [31:0]   regs_0;
  reg        [31:0]   regs_1;
  reg        [31:0]   regs_2;
  reg        [31:0]   regs_3;
  reg        [31:0]   regs_4;
  reg        [31:0]   regs_5;
  reg        [31:0]   regs_6;
  reg        [31:0]   regs_7;
  reg        [31:0]   regs_8;
  reg        [31:0]   regs_9;
  reg        [31:0]   regs_10;
  reg        [31:0]   regs_11;
  reg        [31:0]   regs_12;
  reg        [31:0]   regs_13;
  reg        [31:0]   regs_14;
  reg        [31:0]   regs_15;
  reg        [31:0]   regs_16;
  reg        [31:0]   regs_17;
  reg        [31:0]   regs_18;
  reg        [31:0]   regs_19;
  reg        [31:0]   regs_20;
  reg        [31:0]   regs_21;
  reg        [31:0]   regs_22;
  reg        [31:0]   regs_23;
  reg        [31:0]   regs_24;
  reg        [31:0]   regs_25;
  reg        [31:0]   regs_26;
  reg        [31:0]   regs_27;
  reg        [31:0]   regs_28;
  reg        [31:0]   regs_29;
  reg        [31:0]   regs_30;
  reg        [31:0]   regs_31;
  wire                when_RegisterFile_l30;
  wire       [31:0]   _zz_1;
  wire                when_RegisterFile_l35;
  wire                when_RegisterFile_l37;
  wire                when_RegisterFile_l44;
  wire                when_RegisterFile_l46;

  assign _zz_io_rs1Data = 1'b0;
  assign _zz_io_rs2Data = 1'b0;
  assign _zz_io_rs1Data_2 = io_rs1;
  assign _zz_io_rs2Data_2 = io_rs2;
  always @(*) begin
    case(_zz_io_rs1Data_2)
      5'b00000 : _zz_io_rs1Data_1 = regs_0;
      5'b00001 : _zz_io_rs1Data_1 = regs_1;
      5'b00010 : _zz_io_rs1Data_1 = regs_2;
      5'b00011 : _zz_io_rs1Data_1 = regs_3;
      5'b00100 : _zz_io_rs1Data_1 = regs_4;
      5'b00101 : _zz_io_rs1Data_1 = regs_5;
      5'b00110 : _zz_io_rs1Data_1 = regs_6;
      5'b00111 : _zz_io_rs1Data_1 = regs_7;
      5'b01000 : _zz_io_rs1Data_1 = regs_8;
      5'b01001 : _zz_io_rs1Data_1 = regs_9;
      5'b01010 : _zz_io_rs1Data_1 = regs_10;
      5'b01011 : _zz_io_rs1Data_1 = regs_11;
      5'b01100 : _zz_io_rs1Data_1 = regs_12;
      5'b01101 : _zz_io_rs1Data_1 = regs_13;
      5'b01110 : _zz_io_rs1Data_1 = regs_14;
      5'b01111 : _zz_io_rs1Data_1 = regs_15;
      5'b10000 : _zz_io_rs1Data_1 = regs_16;
      5'b10001 : _zz_io_rs1Data_1 = regs_17;
      5'b10010 : _zz_io_rs1Data_1 = regs_18;
      5'b10011 : _zz_io_rs1Data_1 = regs_19;
      5'b10100 : _zz_io_rs1Data_1 = regs_20;
      5'b10101 : _zz_io_rs1Data_1 = regs_21;
      5'b10110 : _zz_io_rs1Data_1 = regs_22;
      5'b10111 : _zz_io_rs1Data_1 = regs_23;
      5'b11000 : _zz_io_rs1Data_1 = regs_24;
      5'b11001 : _zz_io_rs1Data_1 = regs_25;
      5'b11010 : _zz_io_rs1Data_1 = regs_26;
      5'b11011 : _zz_io_rs1Data_1 = regs_27;
      5'b11100 : _zz_io_rs1Data_1 = regs_28;
      5'b11101 : _zz_io_rs1Data_1 = regs_29;
      5'b11110 : _zz_io_rs1Data_1 = regs_30;
      default : _zz_io_rs1Data_1 = regs_31;
    endcase
  end

  always @(*) begin
    case(_zz_io_rs2Data_2)
      5'b00000 : _zz_io_rs2Data_1 = regs_0;
      5'b00001 : _zz_io_rs2Data_1 = regs_1;
      5'b00010 : _zz_io_rs2Data_1 = regs_2;
      5'b00011 : _zz_io_rs2Data_1 = regs_3;
      5'b00100 : _zz_io_rs2Data_1 = regs_4;
      5'b00101 : _zz_io_rs2Data_1 = regs_5;
      5'b00110 : _zz_io_rs2Data_1 = regs_6;
      5'b00111 : _zz_io_rs2Data_1 = regs_7;
      5'b01000 : _zz_io_rs2Data_1 = regs_8;
      5'b01001 : _zz_io_rs2Data_1 = regs_9;
      5'b01010 : _zz_io_rs2Data_1 = regs_10;
      5'b01011 : _zz_io_rs2Data_1 = regs_11;
      5'b01100 : _zz_io_rs2Data_1 = regs_12;
      5'b01101 : _zz_io_rs2Data_1 = regs_13;
      5'b01110 : _zz_io_rs2Data_1 = regs_14;
      5'b01111 : _zz_io_rs2Data_1 = regs_15;
      5'b10000 : _zz_io_rs2Data_1 = regs_16;
      5'b10001 : _zz_io_rs2Data_1 = regs_17;
      5'b10010 : _zz_io_rs2Data_1 = regs_18;
      5'b10011 : _zz_io_rs2Data_1 = regs_19;
      5'b10100 : _zz_io_rs2Data_1 = regs_20;
      5'b10101 : _zz_io_rs2Data_1 = regs_21;
      5'b10110 : _zz_io_rs2Data_1 = regs_22;
      5'b10111 : _zz_io_rs2Data_1 = regs_23;
      5'b11000 : _zz_io_rs2Data_1 = regs_24;
      5'b11001 : _zz_io_rs2Data_1 = regs_25;
      5'b11010 : _zz_io_rs2Data_1 = regs_26;
      5'b11011 : _zz_io_rs2Data_1 = regs_27;
      5'b11100 : _zz_io_rs2Data_1 = regs_28;
      5'b11101 : _zz_io_rs2Data_1 = regs_29;
      5'b11110 : _zz_io_rs2Data_1 = regs_30;
      default : _zz_io_rs2Data_1 = regs_31;
    endcase
  end

  assign when_RegisterFile_l30 = (io_regWrite && (io_rd != 5'h0));
  assign _zz_1 = ({31'd0,1'b1} <<< io_rd);
  assign when_RegisterFile_l35 = (io_rs1 == 5'h0);
  always @(*) begin
    if(when_RegisterFile_l35) begin
      io_rs1Data = {31'd0, _zz_io_rs1Data};
    end else begin
      if(when_RegisterFile_l37) begin
        io_rs1Data = io_rdData;
      end else begin
        io_rs1Data = _zz_io_rs1Data_1;
      end
    end
  end

  assign when_RegisterFile_l37 = (io_regWrite && (io_rs1 == io_rd));
  assign when_RegisterFile_l44 = (io_rs2 == 5'h0);
  always @(*) begin
    if(when_RegisterFile_l44) begin
      io_rs2Data = {31'd0, _zz_io_rs2Data};
    end else begin
      if(when_RegisterFile_l46) begin
        io_rs2Data = io_rdData;
      end else begin
        io_rs2Data = _zz_io_rs2Data_1;
      end
    end
  end

  assign when_RegisterFile_l46 = (io_regWrite && (io_rs2 == io_rd));
  always @(posedge clkCore or posedge rstCore) begin
    if(rstCore) begin
      regs_0 <= 32'h0;
      regs_1 <= 32'h0;
      regs_2 <= 32'h0;
      regs_3 <= 32'h0;
      regs_4 <= 32'h0;
      regs_5 <= 32'h0;
      regs_6 <= 32'h0;
      regs_7 <= 32'h0;
      regs_8 <= 32'h0;
      regs_9 <= 32'h0;
      regs_10 <= 32'h0;
      regs_11 <= 32'h0;
      regs_12 <= 32'h0;
      regs_13 <= 32'h0;
      regs_14 <= 32'h0;
      regs_15 <= 32'h0;
      regs_16 <= 32'h0;
      regs_17 <= 32'h0;
      regs_18 <= 32'h0;
      regs_19 <= 32'h0;
      regs_20 <= 32'h0;
      regs_21 <= 32'h0;
      regs_22 <= 32'h0;
      regs_23 <= 32'h0;
      regs_24 <= 32'h0;
      regs_25 <= 32'h0;
      regs_26 <= 32'h0;
      regs_27 <= 32'h0;
      regs_28 <= 32'h0;
      regs_29 <= 32'h0;
      regs_30 <= 32'h0;
      regs_31 <= 32'h0;
    end else begin
      if(when_RegisterFile_l30) begin
        if(_zz_1[0]) begin
          regs_0 <= io_rdData;
        end
        if(_zz_1[1]) begin
          regs_1 <= io_rdData;
        end
        if(_zz_1[2]) begin
          regs_2 <= io_rdData;
        end
        if(_zz_1[3]) begin
          regs_3 <= io_rdData;
        end
        if(_zz_1[4]) begin
          regs_4 <= io_rdData;
        end
        if(_zz_1[5]) begin
          regs_5 <= io_rdData;
        end
        if(_zz_1[6]) begin
          regs_6 <= io_rdData;
        end
        if(_zz_1[7]) begin
          regs_7 <= io_rdData;
        end
        if(_zz_1[8]) begin
          regs_8 <= io_rdData;
        end
        if(_zz_1[9]) begin
          regs_9 <= io_rdData;
        end
        if(_zz_1[10]) begin
          regs_10 <= io_rdData;
        end
        if(_zz_1[11]) begin
          regs_11 <= io_rdData;
        end
        if(_zz_1[12]) begin
          regs_12 <= io_rdData;
        end
        if(_zz_1[13]) begin
          regs_13 <= io_rdData;
        end
        if(_zz_1[14]) begin
          regs_14 <= io_rdData;
        end
        if(_zz_1[15]) begin
          regs_15 <= io_rdData;
        end
        if(_zz_1[16]) begin
          regs_16 <= io_rdData;
        end
        if(_zz_1[17]) begin
          regs_17 <= io_rdData;
        end
        if(_zz_1[18]) begin
          regs_18 <= io_rdData;
        end
        if(_zz_1[19]) begin
          regs_19 <= io_rdData;
        end
        if(_zz_1[20]) begin
          regs_20 <= io_rdData;
        end
        if(_zz_1[21]) begin
          regs_21 <= io_rdData;
        end
        if(_zz_1[22]) begin
          regs_22 <= io_rdData;
        end
        if(_zz_1[23]) begin
          regs_23 <= io_rdData;
        end
        if(_zz_1[24]) begin
          regs_24 <= io_rdData;
        end
        if(_zz_1[25]) begin
          regs_25 <= io_rdData;
        end
        if(_zz_1[26]) begin
          regs_26 <= io_rdData;
        end
        if(_zz_1[27]) begin
          regs_27 <= io_rdData;
        end
        if(_zz_1[28]) begin
          regs_28 <= io_rdData;
        end
        if(_zz_1[29]) begin
          regs_29 <= io_rdData;
        end
        if(_zz_1[30]) begin
          regs_30 <= io_rdData;
        end
        if(_zz_1[31]) begin
          regs_31 <= io_rdData;
        end
      end
    end
  end


endmodule

module ControlUnit (
  input  wire [6:0]    io_opcode,
  input  wire [2:0]    io_funct3,
  input  wire [6:0]    io_funct7,
  output reg  [1:0]    io_resultSrc,
  output reg           io_regWrite,
  output reg           io_memWrite,
  output reg  [2:0]    io_memOp,
  output reg  [2:0]    io_branchOp,
  output reg  [3:0]    io_aluOp,
  output reg  [0:0]    io_intSrcA,
  output reg  [0:0]    io_intSrcB,
  output reg  [0:0]    io_pcAddSrcA,
  output reg  [2:0]    io_immSrc
);
  localparam ResultSrc_alu_ = 2'd0;
  localparam ResultSrc_mem_ = 2'd1;
  localparam ResultSrc_pc4_ = 2'd2;
  localparam MemOp_byte_ = 3'd0;
  localparam MemOp_half_ = 3'd1;
  localparam MemOp_word_ = 3'd2;
  localparam MemOp_byteu_ = 3'd3;
  localparam MemOp_halfu_ = 3'd4;
  localparam BranchOp_pc4_ = 3'd0;
  localparam BranchOp_jump_ = 3'd1;
  localparam BranchOp_beq_ = 3'd2;
  localparam BranchOp_bne_ = 3'd3;
  localparam BranchOp_blt_ = 3'd4;
  localparam BranchOp_bge_ = 3'd5;
  localparam AluOp_add_ = 4'd0;
  localparam AluOp_sub_ = 4'd1;
  localparam AluOp_sll_ = 4'd2;
  localparam AluOp_srl_ = 4'd3;
  localparam AluOp_sra_ = 4'd4;
  localparam AluOp_xor_ = 4'd5;
  localparam AluOp_or_ = 4'd6;
  localparam AluOp_and_ = 4'd7;
  localparam AluOp_slt_ = 4'd8;
  localparam AluOp_sltu_ = 4'd9;
  localparam AluOp_srca_ = 4'd10;
  localparam AluOp_srcb_ = 4'd11;
  localparam IntSrcA_rs1_ = 1'd0;
  localparam IntSrcA_pc_ = 1'd1;
  localparam IntSrcB_rs2_ = 1'd0;
  localparam IntSrcB_imm_ = 1'd1;
  localparam PcAddSrcA_rs1_ = 1'd0;
  localparam PcAddSrcA_pc_ = 1'd1;
  localparam ImmSrc_i1_ = 3'd0;
  localparam ImmSrc_i2_ = 3'd1;
  localparam ImmSrc_s_ = 3'd2;
  localparam ImmSrc_b_ = 3'd3;
  localparam ImmSrc_j_ = 3'd4;
  localparam ImmSrc_u_ = 3'd5;
  localparam Inst_invaild_ = 6'd0;
  localparam Inst_add_ = 6'd1;
  localparam Inst_sub_ = 6'd2;
  localparam Inst_sll_ = 6'd3;
  localparam Inst_srl_ = 6'd4;
  localparam Inst_sra_ = 6'd5;
  localparam Inst_xor_ = 6'd6;
  localparam Inst_or_ = 6'd7;
  localparam Inst_and_ = 6'd8;
  localparam Inst_slt_ = 6'd9;
  localparam Inst_sltu_ = 6'd10;
  localparam Inst_addi_ = 6'd11;
  localparam Inst_slli_ = 6'd12;
  localparam Inst_srli_ = 6'd13;
  localparam Inst_srai_ = 6'd14;
  localparam Inst_xori_ = 6'd15;
  localparam Inst_ori_ = 6'd16;
  localparam Inst_andi_ = 6'd17;
  localparam Inst_slti_ = 6'd18;
  localparam Inst_sltiu_ = 6'd19;
  localparam Inst_jalr_ = 6'd20;
  localparam Inst_lb_ = 6'd21;
  localparam Inst_lh_ = 6'd22;
  localparam Inst_lw_ = 6'd23;
  localparam Inst_lbu_ = 6'd24;
  localparam Inst_lhu_ = 6'd25;
  localparam Inst_sb_ = 6'd26;
  localparam Inst_sh_ = 6'd27;
  localparam Inst_sw_ = 6'd28;
  localparam Inst_beq_ = 6'd29;
  localparam Inst_bne_ = 6'd30;
  localparam Inst_blt_ = 6'd31;
  localparam Inst_bge_ = 6'd32;
  localparam Inst_bltu_ = 6'd33;
  localparam Inst_bgeu_ = 6'd34;
  localparam Inst_jal_ = 6'd35;
  localparam Inst_lui_ = 6'd36;
  localparam Inst_auipc_ = 6'd37;

  reg        [5:0]    instruction;
  wire                when_SwitchF7_l17;
  wire                when_SwitchF7_l24;
  `ifndef SYNTHESIS
  reg [31:0] io_resultSrc_string;
  reg [47:0] io_memOp_string;
  reg [39:0] io_branchOp_string;
  reg [39:0] io_aluOp_string;
  reg [31:0] io_intSrcA_string;
  reg [31:0] io_intSrcB_string;
  reg [31:0] io_pcAddSrcA_string;
  reg [23:0] io_immSrc_string;
  reg [63:0] instruction_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(io_resultSrc)
      ResultSrc_alu_ : io_resultSrc_string = "alu_";
      ResultSrc_mem_ : io_resultSrc_string = "mem_";
      ResultSrc_pc4_ : io_resultSrc_string = "pc4_";
      default : io_resultSrc_string = "????";
    endcase
  end
  always @(*) begin
    case(io_memOp)
      MemOp_byte_ : io_memOp_string = "byte_ ";
      MemOp_half_ : io_memOp_string = "half_ ";
      MemOp_word_ : io_memOp_string = "word_ ";
      MemOp_byteu_ : io_memOp_string = "byteu_";
      MemOp_halfu_ : io_memOp_string = "halfu_";
      default : io_memOp_string = "??????";
    endcase
  end
  always @(*) begin
    case(io_branchOp)
      BranchOp_pc4_ : io_branchOp_string = "pc4_ ";
      BranchOp_jump_ : io_branchOp_string = "jump_";
      BranchOp_beq_ : io_branchOp_string = "beq_ ";
      BranchOp_bne_ : io_branchOp_string = "bne_ ";
      BranchOp_blt_ : io_branchOp_string = "blt_ ";
      BranchOp_bge_ : io_branchOp_string = "bge_ ";
      default : io_branchOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_aluOp)
      AluOp_add_ : io_aluOp_string = "add_ ";
      AluOp_sub_ : io_aluOp_string = "sub_ ";
      AluOp_sll_ : io_aluOp_string = "sll_ ";
      AluOp_srl_ : io_aluOp_string = "srl_ ";
      AluOp_sra_ : io_aluOp_string = "sra_ ";
      AluOp_xor_ : io_aluOp_string = "xor_ ";
      AluOp_or_ : io_aluOp_string = "or_  ";
      AluOp_and_ : io_aluOp_string = "and_ ";
      AluOp_slt_ : io_aluOp_string = "slt_ ";
      AluOp_sltu_ : io_aluOp_string = "sltu_";
      AluOp_srca_ : io_aluOp_string = "srca_";
      AluOp_srcb_ : io_aluOp_string = "srcb_";
      default : io_aluOp_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_intSrcA)
      IntSrcA_rs1_ : io_intSrcA_string = "rs1_";
      IntSrcA_pc_ : io_intSrcA_string = "pc_ ";
      default : io_intSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(io_intSrcB)
      IntSrcB_rs2_ : io_intSrcB_string = "rs2_";
      IntSrcB_imm_ : io_intSrcB_string = "imm_";
      default : io_intSrcB_string = "????";
    endcase
  end
  always @(*) begin
    case(io_pcAddSrcA)
      PcAddSrcA_rs1_ : io_pcAddSrcA_string = "rs1_";
      PcAddSrcA_pc_ : io_pcAddSrcA_string = "pc_ ";
      default : io_pcAddSrcA_string = "????";
    endcase
  end
  always @(*) begin
    case(io_immSrc)
      ImmSrc_i1_ : io_immSrc_string = "i1_";
      ImmSrc_i2_ : io_immSrc_string = "i2_";
      ImmSrc_s_ : io_immSrc_string = "s_ ";
      ImmSrc_b_ : io_immSrc_string = "b_ ";
      ImmSrc_j_ : io_immSrc_string = "j_ ";
      ImmSrc_u_ : io_immSrc_string = "u_ ";
      default : io_immSrc_string = "???";
    endcase
  end
  always @(*) begin
    case(instruction)
      Inst_invaild_ : instruction_string = "invaild_";
      Inst_add_ : instruction_string = "add_    ";
      Inst_sub_ : instruction_string = "sub_    ";
      Inst_sll_ : instruction_string = "sll_    ";
      Inst_srl_ : instruction_string = "srl_    ";
      Inst_sra_ : instruction_string = "sra_    ";
      Inst_xor_ : instruction_string = "xor_    ";
      Inst_or_ : instruction_string = "or_     ";
      Inst_and_ : instruction_string = "and_    ";
      Inst_slt_ : instruction_string = "slt_    ";
      Inst_sltu_ : instruction_string = "sltu_   ";
      Inst_addi_ : instruction_string = "addi_   ";
      Inst_slli_ : instruction_string = "slli_   ";
      Inst_srli_ : instruction_string = "srli_   ";
      Inst_srai_ : instruction_string = "srai_   ";
      Inst_xori_ : instruction_string = "xori_   ";
      Inst_ori_ : instruction_string = "ori_    ";
      Inst_andi_ : instruction_string = "andi_   ";
      Inst_slti_ : instruction_string = "slti_   ";
      Inst_sltiu_ : instruction_string = "sltiu_  ";
      Inst_jalr_ : instruction_string = "jalr_   ";
      Inst_lb_ : instruction_string = "lb_     ";
      Inst_lh_ : instruction_string = "lh_     ";
      Inst_lw_ : instruction_string = "lw_     ";
      Inst_lbu_ : instruction_string = "lbu_    ";
      Inst_lhu_ : instruction_string = "lhu_    ";
      Inst_sb_ : instruction_string = "sb_     ";
      Inst_sh_ : instruction_string = "sh_     ";
      Inst_sw_ : instruction_string = "sw_     ";
      Inst_beq_ : instruction_string = "beq_    ";
      Inst_bne_ : instruction_string = "bne_    ";
      Inst_blt_ : instruction_string = "blt_    ";
      Inst_bge_ : instruction_string = "bge_    ";
      Inst_bltu_ : instruction_string = "bltu_   ";
      Inst_bgeu_ : instruction_string = "bgeu_   ";
      Inst_jal_ : instruction_string = "jal_    ";
      Inst_lui_ : instruction_string = "lui_    ";
      Inst_auipc_ : instruction_string = "auipc_  ";
      default : instruction_string = "????????";
    endcase
  end
  `endif

  always @(*) begin
    io_regWrite = 1'b0;
    case(io_opcode)
      7'h33 : begin
        io_regWrite = 1'b1;
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_regWrite = 1'b0;
              end
            endcase
          end
          default : begin
            io_regWrite = 1'b0;
          end
        endcase
      end
      7'h13 : begin
        io_regWrite = 1'b1;
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_regWrite = 1'b0;
                end
              endcase
            end
            default : begin
              io_regWrite = 1'b0;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_regWrite = 1'b0;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        io_regWrite = 1'b1;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_regWrite = 1'b0;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_regWrite = 1'b0;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_regWrite = 1'b0;
          end
        endcase
      end
      7'h6f : begin
        io_regWrite = 1'b1;
      end
      7'h67 : begin
        io_regWrite = 1'b1;
      end
      7'h37 : begin
        io_regWrite = 1'b1;
      end
      7'h17 : begin
        io_regWrite = 1'b1;
      end
      default : begin
        io_regWrite = 1'b0;
      end
    endcase
  end

  always @(*) begin
    io_memWrite = 1'b0;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_memWrite = 1'b0;
              end
            endcase
          end
          default : begin
            io_memWrite = 1'b0;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_memWrite = 1'b0;
                end
              endcase
            end
            default : begin
              io_memWrite = 1'b0;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_memWrite = 1'b0;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_memWrite = 1'b0;
          end
        endcase
      end
      7'h23 : begin
        io_memWrite = 1'b1;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_memWrite = 1'b0;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_memWrite = 1'b0;
          end
        endcase
      end
      7'h6f : begin
      end
      7'h67 : begin
      end
      7'h37 : begin
      end
      7'h17 : begin
      end
      default : begin
        io_memWrite = 1'b0;
      end
    endcase
  end

  always @(*) begin
    io_resultSrc = ResultSrc_alu_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
            io_resultSrc = ResultSrc_alu_;
          end
          7'h20 : begin
            io_resultSrc = ResultSrc_alu_;
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_resultSrc = ResultSrc_alu_;
              end
            endcase
          end
          default : begin
            io_resultSrc = ResultSrc_alu_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
              io_resultSrc = ResultSrc_alu_;
            end
            7'h20 : begin
              io_resultSrc = ResultSrc_alu_;
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_resultSrc = ResultSrc_alu_;
                end
              endcase
            end
            default : begin
              io_resultSrc = ResultSrc_alu_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
                io_resultSrc = ResultSrc_alu_;
              end
              default : begin
                io_resultSrc = ResultSrc_alu_;
              end
            endcase
          end else begin
            io_resultSrc = ResultSrc_alu_;
          end
        end
      end
      7'h03 : begin
        io_resultSrc = ResultSrc_mem_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_resultSrc = ResultSrc_alu_;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_resultSrc = ResultSrc_alu_;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_resultSrc = ResultSrc_alu_;
          end
        endcase
      end
      7'h6f : begin
        io_resultSrc = ResultSrc_pc4_;
      end
      7'h67 : begin
        io_resultSrc = ResultSrc_pc4_;
      end
      7'h37 : begin
        io_resultSrc = ResultSrc_alu_;
      end
      7'h17 : begin
        io_resultSrc = ResultSrc_alu_;
      end
      default : begin
        io_resultSrc = ResultSrc_alu_;
      end
    endcase
  end

  always @(*) begin
    io_intSrcA = IntSrcA_rs1_;
    case(io_opcode)
      7'h33 : begin
        io_intSrcA = IntSrcA_rs1_;
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_intSrcA = IntSrcA_rs1_;
              end
            endcase
          end
          default : begin
            io_intSrcA = IntSrcA_rs1_;
          end
        endcase
      end
      7'h13 : begin
        io_intSrcA = IntSrcA_rs1_;
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_intSrcA = IntSrcA_rs1_;
                end
              endcase
            end
            default : begin
              io_intSrcA = IntSrcA_rs1_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_intSrcA = IntSrcA_rs1_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        io_intSrcA = IntSrcA_rs1_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_intSrcA = IntSrcA_rs1_;
          end
        endcase
      end
      7'h23 : begin
        io_intSrcA = IntSrcA_rs1_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_intSrcA = IntSrcA_rs1_;
          end
        endcase
      end
      7'h63 : begin
        io_intSrcA = IntSrcA_rs1_;
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_intSrcA = IntSrcA_rs1_;
          end
        endcase
      end
      7'h6f : begin
      end
      7'h67 : begin
      end
      7'h37 : begin
      end
      7'h17 : begin
        io_intSrcA = IntSrcA_pc_;
      end
      default : begin
        io_intSrcA = IntSrcA_rs1_;
      end
    endcase
  end

  always @(*) begin
    io_intSrcB = IntSrcB_rs2_;
    case(io_opcode)
      7'h33 : begin
        io_intSrcB = IntSrcB_rs2_;
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_intSrcB = IntSrcB_rs2_;
              end
            endcase
          end
          default : begin
            io_intSrcB = IntSrcB_rs2_;
          end
        endcase
      end
      7'h13 : begin
        io_intSrcB = IntSrcB_imm_;
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_intSrcB = IntSrcB_rs2_;
                end
              endcase
            end
            default : begin
              io_intSrcB = IntSrcB_rs2_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_intSrcB = IntSrcB_rs2_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        io_intSrcB = IntSrcB_imm_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_intSrcB = IntSrcB_rs2_;
          end
        endcase
      end
      7'h23 : begin
        io_intSrcB = IntSrcB_imm_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_intSrcB = IntSrcB_rs2_;
          end
        endcase
      end
      7'h63 : begin
        io_intSrcB = IntSrcB_rs2_;
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_intSrcB = IntSrcB_rs2_;
          end
        endcase
      end
      7'h6f : begin
      end
      7'h67 : begin
      end
      7'h37 : begin
        io_intSrcB = IntSrcB_imm_;
      end
      7'h17 : begin
        io_intSrcB = IntSrcB_imm_;
      end
      default : begin
        io_intSrcB = IntSrcB_rs2_;
      end
    endcase
  end

  always @(*) begin
    io_memOp = MemOp_word_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_memOp = MemOp_word_;
              end
            endcase
          end
          default : begin
            io_memOp = MemOp_word_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_memOp = MemOp_word_;
                end
              endcase
            end
            default : begin
              io_memOp = MemOp_word_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_memOp = MemOp_word_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        case(io_funct3)
          3'b010 : begin
            io_memOp = MemOp_word_;
          end
          3'b001 : begin
            io_memOp = MemOp_half_;
          end
          3'b000 : begin
            io_memOp = MemOp_byte_;
          end
          3'b101 : begin
            io_memOp = MemOp_halfu_;
          end
          3'b100 : begin
            io_memOp = MemOp_byteu_;
          end
          default : begin
            io_memOp = MemOp_word_;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
            io_memOp = MemOp_word_;
          end
          3'b001 : begin
            io_memOp = MemOp_half_;
          end
          3'b000 : begin
            io_memOp = MemOp_byte_;
          end
          default : begin
            io_memOp = MemOp_word_;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_memOp = MemOp_word_;
          end
        endcase
      end
      7'h6f : begin
      end
      7'h67 : begin
      end
      7'h37 : begin
      end
      7'h17 : begin
      end
      default : begin
        io_memOp = MemOp_word_;
      end
    endcase
  end

  always @(*) begin
    io_aluOp = AluOp_add_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
            case(io_funct3)
              3'b000 : begin
                io_aluOp = AluOp_add_;
              end
              3'b001 : begin
                io_aluOp = AluOp_sll_;
              end
              3'b101 : begin
                io_aluOp = AluOp_srl_;
              end
              3'b100 : begin
                io_aluOp = AluOp_xor_;
              end
              3'b110 : begin
                io_aluOp = AluOp_or_;
              end
              3'b111 : begin
                io_aluOp = AluOp_and_;
              end
              3'b010 : begin
                io_aluOp = AluOp_slt_;
              end
              default : begin
                io_aluOp = AluOp_sltu_;
              end
            endcase
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
                io_aluOp = AluOp_sub_;
              end
              3'b101 : begin
                io_aluOp = AluOp_sra_;
              end
              default : begin
                io_aluOp = AluOp_add_;
              end
            endcase
          end
          default : begin
            io_aluOp = AluOp_add_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
              case(io_funct3)
                3'b000 : begin
                  io_aluOp = AluOp_add_;
                end
                3'b001 : begin
                  io_aluOp = AluOp_sll_;
                end
                3'b101 : begin
                  io_aluOp = AluOp_srl_;
                end
                3'b100 : begin
                  io_aluOp = AluOp_xor_;
                end
                3'b110 : begin
                  io_aluOp = AluOp_or_;
                end
                3'b111 : begin
                  io_aluOp = AluOp_and_;
                end
                3'b010 : begin
                  io_aluOp = AluOp_slt_;
                end
                default : begin
                  io_aluOp = AluOp_sltu_;
                end
              endcase
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                  io_aluOp = AluOp_sub_;
                end
                3'b101 : begin
                  io_aluOp = AluOp_sra_;
                end
                default : begin
                  io_aluOp = AluOp_add_;
                end
              endcase
            end
            default : begin
              io_aluOp = AluOp_add_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
                case(io_funct3)
                  3'b000 : begin
                    io_aluOp = AluOp_add_;
                  end
                  3'b001 : begin
                    io_aluOp = AluOp_sll_;
                  end
                  3'b101 : begin
                    io_aluOp = AluOp_srl_;
                  end
                  3'b100 : begin
                    io_aluOp = AluOp_xor_;
                  end
                  3'b110 : begin
                    io_aluOp = AluOp_or_;
                  end
                  3'b111 : begin
                    io_aluOp = AluOp_and_;
                  end
                  3'b010 : begin
                    io_aluOp = AluOp_slt_;
                  end
                  default : begin
                    io_aluOp = AluOp_sltu_;
                  end
                endcase
              end
              default : begin
                io_aluOp = AluOp_add_;
              end
            endcase
          end else begin
            case(io_funct3)
              3'b000 : begin
                io_aluOp = AluOp_add_;
              end
              3'b001 : begin
                io_aluOp = AluOp_sll_;
              end
              3'b101 : begin
                io_aluOp = AluOp_srl_;
              end
              3'b100 : begin
                io_aluOp = AluOp_xor_;
              end
              3'b110 : begin
                io_aluOp = AluOp_or_;
              end
              3'b111 : begin
                io_aluOp = AluOp_and_;
              end
              3'b010 : begin
                io_aluOp = AluOp_slt_;
              end
              default : begin
                io_aluOp = AluOp_sltu_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        io_aluOp = AluOp_add_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_aluOp = AluOp_add_;
          end
        endcase
      end
      7'h23 : begin
        io_aluOp = AluOp_add_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_aluOp = AluOp_add_;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
            io_aluOp = AluOp_sub_;
          end
          3'b001 : begin
            io_aluOp = AluOp_sub_;
          end
          3'b100 : begin
            io_aluOp = AluOp_slt_;
          end
          3'b101 : begin
            io_aluOp = AluOp_slt_;
          end
          3'b110 : begin
            io_aluOp = AluOp_sltu_;
          end
          3'b111 : begin
            io_aluOp = AluOp_sltu_;
          end
          default : begin
            io_aluOp = AluOp_add_;
          end
        endcase
      end
      7'h6f : begin
      end
      7'h67 : begin
      end
      7'h37 : begin
        io_aluOp = AluOp_srcb_;
      end
      7'h17 : begin
        io_aluOp = AluOp_add_;
      end
      default : begin
        io_aluOp = AluOp_add_;
      end
    endcase
  end

  always @(*) begin
    io_immSrc = ImmSrc_i1_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_immSrc = ImmSrc_i1_;
              end
            endcase
          end
          default : begin
            io_immSrc = ImmSrc_i1_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
              case(io_funct3)
                3'b000 : begin
                  io_immSrc = ImmSrc_i1_;
                end
                3'b001 : begin
                  io_immSrc = ImmSrc_i2_;
                end
                3'b101 : begin
                  io_immSrc = ImmSrc_i2_;
                end
                3'b100 : begin
                  io_immSrc = ImmSrc_i1_;
                end
                3'b110 : begin
                  io_immSrc = ImmSrc_i1_;
                end
                3'b111 : begin
                  io_immSrc = ImmSrc_i1_;
                end
                3'b010 : begin
                  io_immSrc = ImmSrc_i1_;
                end
                default : begin
                  io_immSrc = ImmSrc_i1_;
                end
              endcase
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                  io_immSrc = ImmSrc_i2_;
                end
                default : begin
                  io_immSrc = ImmSrc_i1_;
                end
              endcase
            end
            default : begin
              io_immSrc = ImmSrc_i1_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
                case(io_funct3)
                  3'b000 : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                  3'b001 : begin
                    io_immSrc = ImmSrc_i2_;
                  end
                  3'b101 : begin
                    io_immSrc = ImmSrc_i2_;
                  end
                  3'b100 : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                  3'b110 : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                  3'b111 : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                  3'b010 : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                  default : begin
                    io_immSrc = ImmSrc_i1_;
                  end
                endcase
              end
              default : begin
                io_immSrc = ImmSrc_i1_;
              end
            endcase
          end else begin
            case(io_funct3)
              3'b000 : begin
                io_immSrc = ImmSrc_i1_;
              end
              3'b001 : begin
                io_immSrc = ImmSrc_i2_;
              end
              3'b101 : begin
                io_immSrc = ImmSrc_i2_;
              end
              3'b100 : begin
                io_immSrc = ImmSrc_i1_;
              end
              3'b110 : begin
                io_immSrc = ImmSrc_i1_;
              end
              3'b111 : begin
                io_immSrc = ImmSrc_i1_;
              end
              3'b010 : begin
                io_immSrc = ImmSrc_i1_;
              end
              default : begin
                io_immSrc = ImmSrc_i1_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        io_immSrc = ImmSrc_i1_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_immSrc = ImmSrc_i1_;
          end
        endcase
      end
      7'h23 : begin
        io_immSrc = ImmSrc_s_;
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_immSrc = ImmSrc_i1_;
          end
        endcase
      end
      7'h63 : begin
        io_immSrc = ImmSrc_b_;
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_immSrc = ImmSrc_i1_;
          end
        endcase
      end
      7'h6f : begin
        io_immSrc = ImmSrc_j_;
      end
      7'h67 : begin
        io_immSrc = ImmSrc_i1_;
      end
      7'h37 : begin
        io_immSrc = ImmSrc_u_;
      end
      7'h17 : begin
        io_immSrc = ImmSrc_u_;
      end
      default : begin
        io_immSrc = ImmSrc_i1_;
      end
    endcase
  end

  always @(*) begin
    io_pcAddSrcA = PcAddSrcA_pc_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_pcAddSrcA = PcAddSrcA_pc_;
              end
            endcase
          end
          default : begin
            io_pcAddSrcA = PcAddSrcA_pc_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_pcAddSrcA = PcAddSrcA_pc_;
                end
              endcase
            end
            default : begin
              io_pcAddSrcA = PcAddSrcA_pc_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_pcAddSrcA = PcAddSrcA_pc_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_pcAddSrcA = PcAddSrcA_pc_;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_pcAddSrcA = PcAddSrcA_pc_;
          end
        endcase
      end
      7'h63 : begin
        io_pcAddSrcA = PcAddSrcA_pc_;
        case(io_funct3)
          3'b000 : begin
          end
          3'b001 : begin
          end
          3'b100 : begin
          end
          3'b101 : begin
          end
          3'b110 : begin
          end
          3'b111 : begin
          end
          default : begin
            io_pcAddSrcA = PcAddSrcA_pc_;
          end
        endcase
      end
      7'h6f : begin
        io_pcAddSrcA = PcAddSrcA_pc_;
      end
      7'h67 : begin
        io_pcAddSrcA = PcAddSrcA_rs1_;
      end
      7'h37 : begin
      end
      7'h17 : begin
      end
      default : begin
        io_pcAddSrcA = PcAddSrcA_pc_;
      end
    endcase
  end

  always @(*) begin
    io_branchOp = BranchOp_pc4_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
              end
              3'b101 : begin
              end
              default : begin
                io_branchOp = BranchOp_pc4_;
              end
            endcase
          end
          default : begin
            io_branchOp = BranchOp_pc4_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                end
                3'b101 : begin
                end
                default : begin
                  io_branchOp = BranchOp_pc4_;
                end
              endcase
            end
            default : begin
              io_branchOp = BranchOp_pc4_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
              end
              default : begin
                io_branchOp = BranchOp_pc4_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          3'b101 : begin
          end
          3'b100 : begin
          end
          default : begin
            io_branchOp = BranchOp_pc4_;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
          end
          3'b001 : begin
          end
          3'b000 : begin
          end
          default : begin
            io_branchOp = BranchOp_pc4_;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
            io_branchOp = BranchOp_beq_;
          end
          3'b001 : begin
            io_branchOp = BranchOp_bne_;
          end
          3'b100 : begin
            io_branchOp = BranchOp_blt_;
          end
          3'b101 : begin
            io_branchOp = BranchOp_bge_;
          end
          3'b110 : begin
            io_branchOp = BranchOp_blt_;
          end
          3'b111 : begin
            io_branchOp = BranchOp_bge_;
          end
          default : begin
            io_branchOp = BranchOp_pc4_;
          end
        endcase
      end
      7'h6f : begin
        io_branchOp = BranchOp_jump_;
      end
      7'h67 : begin
        io_branchOp = BranchOp_jump_;
      end
      7'h37 : begin
      end
      7'h17 : begin
      end
      default : begin
        io_branchOp = BranchOp_pc4_;
      end
    endcase
  end

  always @(*) begin
    instruction = Inst_invaild_;
    case(io_opcode)
      7'h33 : begin
        case(io_funct7)
          7'h0 : begin
            case(io_funct3)
              3'b000 : begin
                instruction = Inst_add_;
              end
              3'b001 : begin
                instruction = Inst_sll_;
              end
              3'b101 : begin
                instruction = Inst_srl_;
              end
              3'b100 : begin
                instruction = Inst_xor_;
              end
              3'b110 : begin
                instruction = Inst_or_;
              end
              3'b111 : begin
                instruction = Inst_and_;
              end
              3'b010 : begin
                instruction = Inst_slt_;
              end
              default : begin
                instruction = Inst_sltu_;
              end
            endcase
          end
          7'h20 : begin
            case(io_funct3)
              3'b000 : begin
                instruction = Inst_sub_;
              end
              3'b101 : begin
                instruction = Inst_sra_;
              end
              default : begin
                instruction = Inst_invaild_;
              end
            endcase
          end
          default : begin
            instruction = Inst_invaild_;
          end
        endcase
      end
      7'h13 : begin
        if(when_SwitchF7_l17) begin
          case(io_funct7)
            7'h0 : begin
              case(io_funct3)
                3'b000 : begin
                  instruction = Inst_addi_;
                end
                3'b001 : begin
                  instruction = Inst_slli_;
                end
                3'b101 : begin
                  instruction = Inst_srli_;
                end
                3'b100 : begin
                  instruction = Inst_xori_;
                end
                3'b110 : begin
                  instruction = Inst_ori_;
                end
                3'b111 : begin
                  instruction = Inst_andi_;
                end
                3'b010 : begin
                  instruction = Inst_slti_;
                end
                default : begin
                  instruction = Inst_sltiu_;
                end
              endcase
            end
            7'h20 : begin
              case(io_funct3)
                3'b000 : begin
                  instruction = Inst_sub_;
                end
                3'b101 : begin
                  instruction = Inst_srai_;
                end
                default : begin
                  instruction = Inst_invaild_;
                end
              endcase
            end
            default : begin
              instruction = Inst_invaild_;
            end
          endcase
        end else begin
          if(when_SwitchF7_l24) begin
            case(io_funct7)
              7'h0 : begin
                case(io_funct3)
                  3'b000 : begin
                    instruction = Inst_addi_;
                  end
                  3'b001 : begin
                    instruction = Inst_slli_;
                  end
                  3'b101 : begin
                    instruction = Inst_srli_;
                  end
                  3'b100 : begin
                    instruction = Inst_xori_;
                  end
                  3'b110 : begin
                    instruction = Inst_ori_;
                  end
                  3'b111 : begin
                    instruction = Inst_andi_;
                  end
                  3'b010 : begin
                    instruction = Inst_slti_;
                  end
                  default : begin
                    instruction = Inst_sltiu_;
                  end
                endcase
              end
              default : begin
                instruction = Inst_invaild_;
              end
            endcase
          end else begin
            case(io_funct3)
              3'b000 : begin
                instruction = Inst_addi_;
              end
              3'b001 : begin
                instruction = Inst_slli_;
              end
              3'b101 : begin
                instruction = Inst_srli_;
              end
              3'b100 : begin
                instruction = Inst_xori_;
              end
              3'b110 : begin
                instruction = Inst_ori_;
              end
              3'b111 : begin
                instruction = Inst_andi_;
              end
              3'b010 : begin
                instruction = Inst_slti_;
              end
              default : begin
                instruction = Inst_sltiu_;
              end
            endcase
          end
        end
      end
      7'h03 : begin
        case(io_funct3)
          3'b010 : begin
            instruction = Inst_lw_;
          end
          3'b001 : begin
            instruction = Inst_lh_;
          end
          3'b000 : begin
            instruction = Inst_lb_;
          end
          3'b101 : begin
            instruction = Inst_lhu_;
          end
          3'b100 : begin
            instruction = Inst_lbu_;
          end
          default : begin
            instruction = Inst_invaild_;
          end
        endcase
      end
      7'h23 : begin
        case(io_funct3)
          3'b010 : begin
            instruction = Inst_sw_;
          end
          3'b001 : begin
            instruction = Inst_sh_;
          end
          3'b000 : begin
            instruction = Inst_sb_;
          end
          default : begin
            instruction = Inst_invaild_;
          end
        endcase
      end
      7'h63 : begin
        case(io_funct3)
          3'b000 : begin
            instruction = Inst_beq_;
          end
          3'b001 : begin
            instruction = Inst_bne_;
          end
          3'b100 : begin
            instruction = Inst_blt_;
          end
          3'b101 : begin
            instruction = Inst_bge_;
          end
          3'b110 : begin
            instruction = Inst_bltu_;
          end
          3'b111 : begin
            instruction = Inst_bgeu_;
          end
          default : begin
            instruction = Inst_invaild_;
          end
        endcase
      end
      7'h6f : begin
        instruction = Inst_jal_;
      end
      7'h67 : begin
        instruction = Inst_jalr_;
      end
      7'h37 : begin
        instruction = Inst_lui_;
      end
      7'h17 : begin
        instruction = Inst_auipc_;
      end
      default : begin
        instruction = Inst_invaild_;
      end
    endcase
  end

  assign when_SwitchF7_l17 = (io_funct3 == 3'b101);
  assign when_SwitchF7_l24 = (io_funct3 == 3'b001);

endmodule
