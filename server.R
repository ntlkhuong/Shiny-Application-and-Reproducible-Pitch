source("./calc.R")

shinyServer(function(input, output) {
    output$input <- renderText({
        if (input$types==1){
            if (input$operators == 1)
                info = "<span style='color: red'>Addition</span>"
            else if (input$operators == 2)
                info = "<span style='color: red'>Substraction</span>"
            else if (input$operators == 3)
                info = "<span style='color: red'>Multiplition</span>"
            else if (input$operators == 4){
            if (input$op2 == 0){
                info = "<span style='color: red'>Division. It is not avaible for calculation</span>"
            }else{
                info = "<span style='color: red'>Division</span>"
            }
            }
            paste0("Calculation for  ", "<strong>",input$op1, " and   ", input$op2, " </strong> of <strong>", info,"</strong>")
        }
            })
    output$result <- renderText({
        if (input$types == 2){
            info = "<span style='color: red'> Science calculation Not support now</span>"
            paste0(info)
    }
    else{
        if (input$op2 == 0 && input$operators == 4){
            paste0("The result is <code> NULL </code>")   
        }
        else{
               calc = calc(op1 = input$op1, op2 = input$op2, oper = input$operators)
                paste0("The result is ", "<code>", calc, "</code>")
        }
    }
    })
    
})