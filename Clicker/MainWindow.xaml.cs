using System;
using System.Windows;
using System.Windows.Threading;

namespace Clicker
{
    public partial class MainWindow : Window
    {
        public double playerMoney;
        public double moneyPerSec;
        public double moneyPerClick;
        public double clickUpgradeCost;
        public double moneyPerSecUpgradeCost;
        private DispatcherTimer dispatcherTimer;

        public MainWindow()
        {
            InitializeComponent();

            playerMoney = 0;
            moneyPerSec = 0;
            moneyPerClick = 1;

            clickUpgradeCost = 25;
            moneyPerSecUpgradeCost = 30;

            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Start();

            gameUpdate();
        }

        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            playerMoney = Math.Round(playerMoney + moneyPerSec, 1, MidpointRounding.AwayFromZero);
            gameUpdate();
        }

        public void gameUpdate()
        {
            clickUpgradeCostLabel.Content = clickUpgradeCost.ToString();
            moneyPerSecUpgradeCostLabel.Content = moneyPerSecUpgradeCost.ToString();
            moneyLabel.Content = playerMoney.ToString();
            moneyPerClickLabel.Content = moneyPerClick.ToString();
            moneyPerSecLabel.Content = moneyPerSec.ToString();

            if (playerMoney < clickUpgradeCost)
                clickUpgradeButton.IsEnabled = false;
            else
                clickUpgradeButton.IsEnabled = true;

            if (playerMoney < moneyPerSecUpgradeCost)
                moneyPerSecUpgradeButton.IsEnabled = false;
            else
                moneyPerSecUpgradeButton.IsEnabled = true;
        }

        private void ClickButton_Click(object sender, RoutedEventArgs e)
        {
            playerMoney = Math.Round(playerMoney + moneyPerClick, 1, MidpointRounding.AwayFromZero);
            gameUpdate();
        }

        private void ClickUpgradeButton_Click(object sender, RoutedEventArgs e)
        {
            if(playerMoney>=clickUpgradeCost)
            {
                playerMoney -= clickUpgradeCost;
                clickUpgradeCost = Math.Round(clickUpgradeCost * 1.5, 1, MidpointRounding.AwayFromZero);
                moneyPerClick = Math.Round(moneyPerClick*1.4, 1, MidpointRounding.AwayFromZero);
                gameUpdate();
            }
        }

        private void MoneyPerSecUpgradeButton_Click(object sender, RoutedEventArgs e)
        {
            if (playerMoney >= moneyPerSecUpgradeCost)
            {
                if (moneyPerSec == 0)
                {
                    playerMoney -= moneyPerSecUpgradeCost;
                    moneyPerSecUpgradeCost = Math.Round(moneyPerSecUpgradeCost*1.5, 1, MidpointRounding.AwayFromZero);
                    moneyPerSec = 1;
                }
                else
                {
                    playerMoney -= moneyPerSecUpgradeCost;
                    moneyPerSecUpgradeCost = Math.Round(moneyPerSecUpgradeCost * 1.5, 1, MidpointRounding.AwayFromZero);
                    moneyPerSec = Math.Round(moneyPerSec * 1.3, 1, MidpointRounding.AwayFromZero);
                }
                gameUpdate();
            }
        }
    }
}
