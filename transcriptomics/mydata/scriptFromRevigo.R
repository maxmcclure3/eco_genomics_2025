# A plotting R script produced by the Revigo server at http://revigo.irb.hr/
# If you found Revigo useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# --------------------------------------------------------------------------
# If you don't have the ggplot2 package installed, uncomment the following line:
install.packages( "ggplot2" );
library( ggplot2 );

# --------------------------------------------------------------------------
# If you don't have the scales package installed, uncomment the following line:
install.packages( "scales" );
library( scales );

# --------------------------------------------------------------------------
# Here is your data from Revigo. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency","plot_X","plot_Y","log_size","value","uniqueness","dispensability");
revigo.data <- rbind(c("GO:0000150","DNA strand exchange activity",0.06907879681709521,-1.3744767956196486,5.32158337846492,4.451571537038068,-1.3038184128314763,0.9771235581135836,0.03206792),
                     c("GO:0008237","metallopeptidase activity",1.3050653990717627,-2.136217935561452,-7.1679390087982275,5.727844506639566,-1.5649523586600353,0.922702248168799,0.35087162),
                     c("GO:0009055","electron transfer activity",0.9552192089902616,-4.825562270134068,3.2171089091514258,5.59231557615425,-3.677780705266081,1,-0),
                     c("GO:0015035","protein-disulfide reductase activity",0.21867829121452026,-3.6312783656168928,-5.856242977856371,4.952021940304929,-3.721246399047171,0.8762769128579808,0),
                     c("GO:0015078","proton transmembrane transporter activity",1.184023032875939,2.2785890922153698,-8.39945098885019,5.685572465087901,-1.7000570999772329,0.9994965848293276,-0),
                     c("GO:0016667","oxidoreductase activity, acting on a sulfur group of donors",0.5674181459607501,-5.153775757427083,-4.544196741322849,5.36611650807837,-1.7101881608823786,0.923769698191139,0.34956589),
                     c("GO:0016744","transketolase or transaldolase activity",0.16736924251979327,-6.660475921851243,-0.24351273814303243,4.835893406212397,-1.6577747706392096,0.9763100187815916,0.03433494),
                     c("GO:0033218","amide binding",0.4892542112910973,-0.5681692446939485,0.37996658851345266,5.3017481589152275,-1.3403689883929994,0.9742241630158087,0.03534301),
                     c("GO:0042802","identical protein binding",0.8127974619446289,6.100695510291808,-3.297170387772655,5.5221950622024805,-1.8535618647142253,0.8755787221656254,0.34349043),
                     c("GO:0048306","calcium-dependent protein binding",0.03990866603458204,5.778873875485998,-2.268825542093078,4.213305206162794,-2.728158393463501,0.8884774921824447,-0),
                     c("GO:0070182","DNA polymerase binding",0.018707568803922554,5.209634401831267,-4.0433819833622735,3.884285462339675,-1.3911531776735884,0.892199788393382,0.2645467),
                     c("GO:0120227","acyl-CoA binding",0.053084558162148895,5.800133094543891,2.9701894493181853,4.337199605373581,-1.4544454927659352,0.9776003188728545,0.02916913),
                     c("GO:1901681","sulfur compound binding",0.5665926683816737,2.53062038602532,4.965284100072505,5.365484240956815,-1.3560540872519333,0.9739817310081865,0.02852898));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$log_size <- as.numeric( as.character(one.data$log_size) );
one.data$value <- as.numeric( as.character(one.data$value) );
one.data$frequency <- as.numeric( as.character(one.data$frequency) );
one.data$uniqueness <- as.numeric( as.character(one.data$uniqueness) );
one.data$dispensability <- as.numeric( as.character(one.data$dispensability) );
#head(one.data);


# --------------------------------------------------------------------------
# Names of the axes, sizes of the numbers and letters, names of the columns,
# etc. can be changed below

p1 <- ggplot( data = one.data );
p1 <- p1 + geom_point( aes( plot_X, plot_Y, colour = value, size = log_size), alpha = I(0.6) );
p1 <- p1 + scale_colour_gradientn( colours = c("blue", "green", "yellow", "red"), limits = c( min(one.data$value), 0) );
p1 <- p1 + geom_point( aes(plot_X, plot_Y, size = log_size), shape = 21, fill = "transparent", colour = I (alpha ("black", 0.6) ));
p1 <- p1 + scale_size( range=c(5, 30)) + theme_bw(); # + scale_fill_gradientn(colours = heat_hcl(7), limits = c(-300, 0) );
ex <- one.data [ one.data$dispensability < 0.15, ];
p1 <- p1 + geom_text( data = ex, aes(plot_X, plot_Y, label = description), colour = I(alpha("black", 0.85)), size = 3 );
p1 <- p1 + labs (y = "semantic space x", x = "semantic space y");
p1 <- p1 + theme(legend.key = element_blank()) ;
one.x_range = max(one.data$plot_X) - min(one.data$plot_X);
one.y_range = max(one.data$plot_Y) - min(one.data$plot_Y);
p1 <- p1 + xlim(min(one.data$plot_X)-one.x_range/10,max(one.data$plot_X)+one.x_range/10);
p1 <- p1 + ylim(min(one.data$plot_Y)-one.y_range/10,max(one.data$plot_Y)+one.y_range/10);


# --------------------------------------------------------------------------
# Output the plot to screen

p1;

