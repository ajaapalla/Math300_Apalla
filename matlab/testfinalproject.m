clear
clc


%% Code

% Asks user for draws value (positive only)
draws = input('How many times would you like to draw a hand?');

for i = 1:draws
    hearts = randi(13);
    diamonds = randi(13);
    clubs = randi(13);
    spades = randi(13);
    rfirst = randi(4); %picks first random card
    switch rfirst
        case 1
            first = hearts;
        case 2
            first = diamonds;
        case 3
            first = clubs;
        otherwise
            first = spades;
    end
    rsecond = randi(4); %picks second random card
    switch rsecond
        case 1
            second = hearts;
        case 2
            second = diamonds;
        case 3
            second = clubs;
        otherwise
            second = spades;
    end
    rthird = randi(4); %picks third random card
    switch rthird
        case 1
            third = hearts;
        case 2
            third = diamonds;
        case 3
            third = clubs;
        otherwise
            third = spades;
    end
    rfourth = randi(4); %picks fourth random card
    switch rfourth
        case 1
            fourth = hearts;
        case 2
            fourth = diamonds;
        case 3
            fourth = clubs;
        otherwise
            fourth = spades;
    end
    rfifth = randi(4); %picks fifth random card
    switch rfifth
        case 1
            fifth = hearts;
        case 2
            fifth = diamonds;
        case 3
            fifth = clubs;
        otherwise
            fifth = spades;
    end
    hand = [first, second, third, fourth, fifth];
    disp(hand);

    % The following checks for 4 matching cards
    if first == second && second == third && third == fourth...
       || first == second && second == third && third == fifth...
       || first == second && second == fourth && fourth == fifth...
       || first == third && third == fourth && fourth == fifth...
       || second == third && third == fourth && fourth == fifth
       fourkind = 1;
       threekind = 0;
       twokind = 0;
        
       % This is to account for 3 of a kind AND a pair
    elseif first == second && second == third && fourth == fifth...
            || first == second && second == fourth && third ==fifth...
            || first == second && second == fifth && third == fourth...
            || first == third && third == fourth && second == fifth...
            || first == fourth && fourth == fifth && second == third...
            || first == third && third == fifth && second == fourth...
            || second == third && third == fourth && first == fifth...
            || second == third && third == fifth && first == fourth...
            || second == fourth && fourth == fifth && first == third...
            || third == fourth && fourth == fifth && first == second
                
        threekind = 1;
        twokind = 1;
        fourkind = 0;

    % The following checks for just 3 of a kind afterwards
    elseif first == second && second == third...
            || first == second && second == fourth...
            || first == second && second == fifth...
            || first == third && third == fourth...
            || first == fourth && fourth == fifth...
            || first == third && third == fifth...
            || second == third && third == fourth...
            || second == third && third == fifth...
            || second == fourth && fourth == fifth...
            || third == fourth && fourth == fifth
    threekind = 1;
    fourkind = 0;
    twokind = 0;
    % The following checks for matching pair(s) 
    else    
    twokind = 0;
    threekind = 0;
    fourkind = 0;
    for p = i
    if first == second
        twokind = twokind +1;
    end
    if second == third
        twokind = twokind +1;
    end
    if third == fourth
        twokind = twokind +1;
    end
    if fourth == fifth
        twokind = twokind +1;
    end
    if first == third
        twokind = twokind +1;
    end
    if first == fourth
        twokind = twokind +1;
    end
    if first == fifth
        twokind = twokind +1;
    end
    if second == fourth
        twokind = twokind +1;
    end
    if second == fifth
        twokind = twokind +1;
    end
    if third == fifth
        twokind = twokind +1;
    end
    end
    end
twokindtotal(i) = twokind;
threekindtotal(i) = threekind;
fourkindtotal(i) = fourkind;
end

% Shows user the results of drawing a given number of hands
finalresult = ['You drew ',num2str(sum(twokindtotal)), ' pair(s), ', ...
    num2str(sum(threekindtotal)), ' three of a kind(s), and ', ...
    num2str(sum(fourkindtotal)),' four of a kind(s)!'];

disp(finalresult);

% The following graphs the total types of pairings
y = [sum(twokindtotal),sum(threekindtotal),sum(fourkindtotal)];
data = bar(y);
combos = {'Pairs';'Three of a Kind';'Four of a Kind'};
set(gca, 'xticklabel',combos)
xlabel('Type of Pairing')
ylabel('Number of times drawn')
xtips = data.XEndPoints;
ytips = data.YEndPoints;
labels = string(data.YData);
text(xtips,ytips,labels,'HorizontalAlignment','center','VerticalAlignment','bottom')
