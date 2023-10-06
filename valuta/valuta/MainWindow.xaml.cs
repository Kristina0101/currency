using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace valuta
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FromCurrency.Items.Add("USD");
            FromCurrency.Items.Add("EUR");
            FromCurrency.Items.Add("RUB");

            ToCurrency.Items.Add("USD");
            ToCurrency.Items.Add("EUR");
            ToCurrency.Items.Add("RUB");

            FromCurrency.SelectedIndex = 0;
            ToCurrency.SelectedIndex = 0;
        }

        private void ConvertCurrency(object sender, RoutedEventArgs e)
        {
            string fromCurrency = FromCurrency.SelectedItem.ToString();
            string toCurrency = ToCurrency.SelectedItem.ToString();

            if (double.TryParse(Amount.Text, out double amount))
            {
                double result = ConvertCurrencyAmount(amount, fromCurrency, toCurrency);
                Result.Text = result.ToString("0.000000   о") + " " + toCurrency;
            }
        }

        private void TextBox_PreviewTextInput(object sender, System.Windows.Input.TextCompositionEventArgs e)
        {
            //Защита от ввода посторонних символов в TextBox (разрешены только цифры и точка для десятичных чисел)
            if (!char.IsDigit(e.Text, 0) && e.Text != ".")
            {
                e.Handled = true;
            }
        }

        private double ConvertCurrencyAmount(double amount, string fromCurrency, string toCurrency)
        {

            Dictionary<string, double> exchangeRates = new Dictionary<string, double>
            {
                { "USD", 1.2 },
                { "EUR", 1.4 },
                { "RUB", 100.0 }
            };

            double fromRate = exchangeRates[fromCurrency];
            double toRate = exchangeRates[toCurrency];

            double result = amount * toRate / fromRate;
            return result;
        }
    }
}