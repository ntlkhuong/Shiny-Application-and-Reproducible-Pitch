shinyUI(fluidPage(
    titlePanel("Basic Calculator"),
    
    sidebarLayout(sidebarPanel(
        
        helpText("Basic calculator for some operands"),
        
        radioButtons(
            inputId  = "types",
            label    = "Types calculation:",
            choices  = c("Basic" = 1, "Science" = 2),
            selected = 1
        ),
        selectInput("operators", "Choose a operator:",
                    choices = c("Addition"=1, "Substraction"=2, 
                                "Multiplition"=3,"Division"=4)),
        
        numericInput(
            inputId = "op1",
            label = strong("Operand 1:"),
            value = 1
        ),
        
        numericInput(
            inputId = "op2",
            label = strong("Operand 2:"),
            value = 1
        )
        ),
        
        mainPanel(
            uiOutput("input"),
            uiOutput("result")
        ))
))