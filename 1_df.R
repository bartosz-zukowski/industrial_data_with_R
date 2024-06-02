name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <-data.frame(name,type,diameter,rotation,rings)

str(planets_df)

planets_df[1,3]
planets_df[4,]
planets_df[1:5, "diameter"]
rings_vector <- planets_df$rings
rings_vector
planets_df[rings_vector, ]
subset(planets_df, subset= diameter<1)
positions <-  order(planets_df$diameter) 
planets_df[positions, ]
