namespace aula01
{
    partial class CalculadoraVelocidadeMédia
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CalculadoraVelocidadeMédia));
            this.picback = new System.Windows.Forms.PictureBox();
            this.lbldist = new System.Windows.Forms.Label();
            this.lbltemp = new System.Windows.Forms.Label();
            this.lblvel = new System.Windows.Forms.Label();
            this.txtdist = new System.Windows.Forms.TextBox();
            this.txttemp = new System.Windows.Forms.TextBox();
            this.txtvel = new System.Windows.Forms.TextBox();
            this.btcalc = new System.Windows.Forms.Button();
            this.btlimp = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.picback)).BeginInit();
            this.SuspendLayout();
            // 
            // picback
            // 
            this.picback.Image = ((System.Drawing.Image)(resources.GetObject("picback.Image")));
            this.picback.Location = new System.Drawing.Point(0, -1);
            this.picback.Name = "picback";
            this.picback.Size = new System.Drawing.Size(448, 332);
            this.picback.TabIndex = 0;
            this.picback.TabStop = false;
            // 
            // lbldist
            // 
            this.lbldist.AutoSize = true;
            this.lbldist.BackColor = System.Drawing.Color.White;
            this.lbldist.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbldist.ForeColor = System.Drawing.Color.Black;
            this.lbldist.Location = new System.Drawing.Point(149, 50);
            this.lbldist.Name = "lbldist";
            this.lbldist.Size = new System.Drawing.Size(90, 24);
            this.lbldist.TabIndex = 1;
            this.lbldist.Text = "Distancia:";
            this.lbldist.Click += new System.EventHandler(this.Label1_Click);
            // 
            // lbltemp
            // 
            this.lbltemp.AutoSize = true;
            this.lbltemp.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbltemp.Location = new System.Drawing.Point(162, 107);
            this.lbltemp.Name = "lbltemp";
            this.lbltemp.Size = new System.Drawing.Size(76, 24);
            this.lbltemp.TabIndex = 2;
            this.lbltemp.Text = "Tempo:";
            // 
            // lblvel
            // 
            this.lblvel.AutoSize = true;
            this.lblvel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblvel.Location = new System.Drawing.Point(43, 170);
            this.lblvel.Name = "lblvel";
            this.lblvel.Size = new System.Drawing.Size(198, 24);
            this.lblvel.TabIndex = 3;
            this.lblvel.Text = "A velocidade média é:";
            // 
            // txtdist
            // 
            this.txtdist.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtdist.Location = new System.Drawing.Point(242, 47);
            this.txtdist.Name = "txtdist";
            this.txtdist.Size = new System.Drawing.Size(174, 29);
            this.txtdist.TabIndex = 4;
            this.txtdist.Text = "Quilometros";
            // 
            // txttemp
            // 
            this.txttemp.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txttemp.Location = new System.Drawing.Point(242, 107);
            this.txttemp.Name = "txttemp";
            this.txttemp.Size = new System.Drawing.Size(174, 29);
            this.txttemp.TabIndex = 5;
            this.txttemp.Text = "Hora";
            // 
            // txtvel
            // 
            this.txtvel.Enabled = false;
            this.txtvel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtvel.Location = new System.Drawing.Point(242, 167);
            this.txtvel.Name = "txtvel";
            this.txtvel.Size = new System.Drawing.Size(174, 29);
            this.txtvel.TabIndex = 6;
            this.txtvel.TextChanged += new System.EventHandler(this.Txtvel_TextChanged);
            // 
            // btcalc
            // 
            this.btcalc.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btcalc.Location = new System.Drawing.Point(80, 240);
            this.btcalc.Name = "btcalc";
            this.btcalc.Size = new System.Drawing.Size(120, 40);
            this.btcalc.TabIndex = 7;
            this.btcalc.Text = "Calcular";
            this.btcalc.UseVisualStyleBackColor = true;
            this.btcalc.Click += new System.EventHandler(this.Btcalc_Click);
            // 
            // btlimp
            // 
            this.btlimp.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btlimp.Location = new System.Drawing.Point(255, 240);
            this.btlimp.Name = "btlimp";
            this.btlimp.Size = new System.Drawing.Size(120, 40);
            this.btlimp.TabIndex = 8;
            this.btlimp.Text = "Limpar";
            this.btlimp.UseVisualStyleBackColor = true;
            this.btlimp.Click += new System.EventHandler(this.Btlimp_Click);
            // 
            // CalculadoraVelocidadeMédia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(448, 329);
            this.Controls.Add(this.btlimp);
            this.Controls.Add(this.btcalc);
            this.Controls.Add(this.txtvel);
            this.Controls.Add(this.txttemp);
            this.Controls.Add(this.txtdist);
            this.Controls.Add(this.lblvel);
            this.Controls.Add(this.lbltemp);
            this.Controls.Add(this.lbldist);
            this.Controls.Add(this.picback);
            this.Name = "CalculadoraVelocidadeMédia";
            this.Text = "Calculadora de Velocidade Média (Km/h)";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.picback)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox picback;
        private System.Windows.Forms.Label lbldist;
        private System.Windows.Forms.Label lbltemp;
        private System.Windows.Forms.Label lblvel;
        private System.Windows.Forms.TextBox txtdist;
        private System.Windows.Forms.TextBox txttemp;
        private System.Windows.Forms.TextBox txtvel;
        private System.Windows.Forms.Button btcalc;
        private System.Windows.Forms.Button btlimp;
    }
}

