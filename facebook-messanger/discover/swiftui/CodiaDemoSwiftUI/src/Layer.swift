
//
//  Layer.swift
//
//  Created by codia-figma
//


import SwiftUI

struct Layer: View {
    private var sectionModels = [
        LayerSectionModel(headerCreator: { sectionModel in
            AnyView(Rectangle().fill(.clear).frame(width: 0, height: 0))
        }, footerCreator: { sectionModel in
            AnyView(Rectangle().fill(.clear).frame(width: 0, height: 0))
        }, cellModels: [
            Group1Model(
                cellCreator: { model in
                    AnyView(Group1(model: model))
                },
                textText: "9:41",
                imageView4Path: "imageView4_1855",
                imageView5Path: "imageView5_1858",
                imageView2Path: "imageView2_1862",
                imageView3Path: "imageView3_1866",
                imageViewPath: "imageView_1481843",
                text1Text: "Discover"
            ),
            Group2Model(
                cellCreator: { model in
                    AnyView(Group2(model: model))
                },
                text2Text: "Search",
                imageView7Path: "imageView7_1962"
            ),
            Group3Model(
                cellCreator: { model in
                    AnyView(Group3(model: model))
                },
                text4Text: "For you",
                text3Text: "Businesses"
            ),
            Group4Model(
                cellCreator: { model in
                    AnyView(Group4(model: model))
                },
                text5Text: "Recent",
                imageView9Path: "imageView9_1481777",
                text6Text: "Apple",
                imageView10Path: "imageView10_1481771",
                text7Text: "Samsung",
                imageView11Path: "imageView11_1481774",
                text8Text: "Airbnb"
            ),
            Group5Model(
                cellCreator: { model in
                    AnyView(Group5(model: model))
                },
                text10Text: "More",
                imageView15Path: "imageView15_1481789",
                text11Text: "Microsoft",
                text12Text: "Science, Technology & Engineering\nOur mission is to empower every person…",
                imageView16Path: "imageView16_1481799",
                text13Text: "Instagram",
                text14Text: "Business\nBringing you closer to the people and thi…",
                imageView17Path: "imageView17_1481794",
                text15Text: "Disney",
                text16Text: "Brand\nDisney magic right at your fingertips",
                imageView18Path: "imageView18_1481784",
                text17Text: "Facebook",
                text18Text: "Website\nWelcome to the Facebook chat bot. Use i…",
                imageView14Path: "imageView14_1481804",
                text9Text: "McDonald’s",
                text19Text: "Burget Restaurant\nDedicated to everyone who says, i’m lovi…",
                line1Path: "line1_1809",
                tab1Path: "tab1_1969",
                imageView20Path: "imageView20_1972",
                imageView21Path: "imageView21_1827",
                text20Text: "2",
                tab2Path: "tab2_1973"
            )
        ])
    ]

    var body: some View {
        List {
            ForEach(sectionModels) { sectionModel in
                Section {
                    ForEach(sectionModel.cellModels) { model in
                        if #available(iOS 15.0, *) {
                            model.createCell()
                                .listRowSeparator(.hidden)
                        } else {
                            model.createCell()
                        }
                    }
                } header: {
                    sectionModel.createHeader()
                } footer: {
                    sectionModel.createFooter()
                }
            }
        }
        .listStyle(.plain)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
        .clipped()
        .frame(width: 375, height: 812)
    }
}

struct Layer_Previews: PreviewProvider {
    static var previews: some View {
        Layer()
    }
}
