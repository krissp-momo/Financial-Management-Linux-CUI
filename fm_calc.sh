#!/bin/bash

clear_screen() {
    clear
}

liquidity_ratios() {
    clear_screen
    echo "=========================================="
    echo "            LIQUIDITY RATIOS              "
    echo "=========================================="
    echo "1. Current Ratio (CA / CL)"
    echo "2. Quick Ratio (Quick Assets / CL)"
    echo "3. Back to Main Menu"
    read -p "Choose an option: " l_choice

    case $l_choice in
        1)
            read -p "Enter Current Assets: " ca
            read -p "Enter Current Liabilities: " cl
            if [ $(echo "$cl == 0" | bc) -eq 1 ]; then
                echo "Error: Liabilities cannot be zero."
            else
                res=$(echo "scale=2; $ca / $cl" | bc)
                echo "Current Ratio = $res : 1"
            fi
            ;;
        2)
            read -p "Enter Quick Assets (CA - Inventory - Prepaid): " qa
            read -p "Enter Current Liabilities: " cl
            if [ $(echo "$cl == 0" | bc) -eq 1 ]; then
                echo "Error: Liabilities cannot be zero."
            else
                res=$(echo "scale=2; $qa / $cl" | bc)
                echo "Quick Ratio = $res : 1"
            fi
            ;;
        3) return ;;
        *) echo "Invalid option." ;;
    esac
    read -p "Press Enter to continue..."
}

solvency_ratios() {
    clear_screen
    echo "=========================================="
    echo "            SOLVENCY RATIOS               "
    echo "=========================================="
    echo "1. Debt-Equity Ratio (Debt / Equity)"
    echo "2. Interest Coverage Ratio (EBIT / Interest)"
    echo "3. Back to Main Menu"
    read -p "Choose an option: " s_choice

    case $s_choice in
        1)
            read -p "Enter Total Debt: " debt
            read -p "Enter Shareholders' Equity: " equity
            if [ $(echo "$equity == 0" | bc) -eq 1 ]; then
                echo "Error: Equity cannot be zero."
            else
                res=$(echo "scale=2; $debt / $equity" | bc)
                echo "Debt-Equity Ratio = $res"
            fi
            ;;
        2)
            read -p "Enter EBIT: " ebit
            read -p "Enter Interest: " interest
            if [ $(echo "$interest == 0" | bc) -eq 1 ]; then
                echo "Error: Interest cannot be zero."
            else
                res=$(echo "scale=2; $ebit / $interest" | bc)
                echo "Interest Coverage Ratio = $res times"
            fi
            ;;
        3) return ;;
        *) echo "Invalid option." ;;
    esac
    read -p "Press Enter to continue..."
}

activity_ratios() {
    clear_screen
    echo "=========================================="
    echo "            ACTIVITY RATIOS               "
    echo "=========================================="
    echo "1. Inventory Turnover (COGS / Avg. Inventory)"
    echo "2. Debtors Turnover (Sales / Avg. Debtors)"
    echo "3. Back to Main Menu"
    read -p "Choose an option: " a_choice

    case $a_choice in
        1)
            read -p "Enter COGS: " cogs
            read -p "Enter Average Inventory: " inv
            if [ $(echo "$inv == 0" | bc) -eq 1 ]; then
                echo "Error: Inventory cannot be zero."
            else
                res=$(echo "scale=2; $cogs / $inv" | bc)
                echo "Inventory Turnover Ratio = $res times"
            fi
            ;;
        2)
            read -p "Enter Net Credit Sales: " sales
            read -p "Enter Average Debtors: " debtors
            if [ $(echo "$debtors == 0" | bc) -eq 1 ]; then
                echo "Error: Debtors cannot be zero."
            else
                res=$(echo "scale=2; $sales / $debtors" | bc)
                echo "Debtors Turnover Ratio = $res times"
            fi
            ;;
        3) return ;;
        *) echo "Invalid option." ;;
    esac
    read -p "Press Enter to continue..."
}

profitability_ratios() {
    clear_screen
    echo "=========================================="
    echo "          PROFITABILITY RATIOS            "
    echo "=========================================="
    echo "1. Gross Profit Ratio (GP / Sales * 100)"
    echo "2. Net Profit Ratio (NP / Sales * 100)"
    echo "3. Return on Investment (NP / Assets * 100)"
    echo "4. Back to Main Menu"
    read -p "Choose an option: " p_choice

    case $p_choice in
        1)
            read -p "Enter Gross Profit: " gp
            read -p "Enter Sales: " sales
            if [ $(echo "$sales == 0" | bc) -eq 1 ]; then
                echo "Error: Sales cannot be zero."
            else
                res=$(echo "scale=2; ($gp / $sales) * 100" | bc)
                echo "Gross Profit Ratio = $res %"
            fi
            ;;
        2)
            read -p "Enter Net Profit: " np
            read -p "Enter Sales: " sales
            if [ $(echo "$sales == 0" | bc) -eq 1 ]; then
                echo "Error: Sales cannot be zero."
            else
                res=$(echo "scale=2; ($np / $sales) * 100" | bc)
                echo "Net Profit Ratio = $res %"
            fi
            ;;
        3)
            read -p "Enter Net Profit: " np
            read -p "Enter Total Assets: " assets
            if [ $(echo "$assets == 0" | bc) -eq 1 ]; then
                echo "Error: Assets cannot be zero."
            else
                res=$(echo "scale=2; ($np / $assets) * 100" | bc)
                echo "ROI = $res %"
            fi
            ;;
        4) return ;;
        *) echo "Invalid option." ;;
    esac
    read -p "Press Enter to continue..."
}

tvm_calculator() {
    clear_screen
    echo "=========================================="
    echo "         TIME VALUE OF MONEY              "
    echo "=========================================="
    echo "1. Simple Interest"
    echo "2. Compound Interest (Annual)"
    echo "3. Back to Main Menu"
    read -p "Choose an option: " t_choice

    case $t_choice in
        1)
            read -p "Enter Principal (P): " p
            read -p "Enter Rate (R): " r
            read -p "Enter Time (T in years): " t
            si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
            echo "Simple Interest = $si"
            echo "Total Amount = $(echo "$p + $si" | bc)"
            ;;
        2)
            read -p "Enter Principal (P): " p
            read -p "Enter Rate (R in %): " r
            read -p "Enter Time (T in years): " t
            amount=$(echo "scale=2; $p * ((1 + $r/100)^$t)" | bc -l)
            echo "Compound Amount = $amount"
            echo "Compound Interest = $(echo "$amount - $p" | bc)"
            ;;
        3) return ;;
        *) echo "Invalid option." ;;
    esac
    read -p "Press Enter to continue..."
}

while true; do
    clear_screen
    echo "------------------------------------------"
    echo "      FINANCIAL MANAGEMENT CALCULATOR     "
    echo "------------------------------------------"
    echo "1. Liquidity Ratios"
    echo "2. Solvency Ratios"
    echo "3. Activity Ratios"
    echo "4. Profitability Ratios"
    echo "5. Time Value of Money (TVM)"
    echo "6. Exit"
    echo "------------------------------------------"
    read -p "Select Category (1-6): " choice

    case $choice in
        1) liquidity_ratios ;;
        2) solvency_ratios ;;
        3) activity_ratios ;;
        4) profitability_ratios ;;
        5) tvm_calculator ;;
        6) 
            echo "Thank you for using the financial management calculator."
            echo " -Krishna Patel(24BCB112)"
            echo " ----------program closed----------"
            exit 0 
            ;;
        *) 
            echo "Invalid choice. Please try again."
            sleep 1
            ;;
    esac
done
