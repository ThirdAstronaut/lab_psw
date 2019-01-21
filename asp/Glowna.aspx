<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Glowna.aspx.cs" Inherits="Glowna" %>

    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to Our Password-Protected Book Information Site</h2>
    <section class="banner">
        <p class="text_banner"><strong>Najlepszy</strong> sklep internetowy z częściami komputerowymi! Sprawdź
            <a href="#opinions">opinie naszych klientów!</a></p>
    </section>
    <br/>
    <section class="top_about">
        <table class="sale_table_index">
            <caption>TOP 3 promocji tygodnia</caption>
            <tr>
                <th></th>
                <th>Rodzaj</th>
            </tr>
            <tr>
                <td rowspan="3">Procesory</td>
                <td>
                    <strong>Intel i7-8700K 3.70GHz 12MB</strong> -
                    <p class="best_price">2 379,00 </p>zł
                    <button id="benchmark" class="align_right" onclick="benchmarkWindow()">Benchmark</button>
                </td>
            </tr>
            <tr>
                <td>Intel i7-7700 3.60GHz 8MB BOX - 1 599,00 zł</td>
            </tr>
            <tr>
                <td>AMD Ryzen 5 2400G 3,6GHz - 685,00 zł</td>
            </tr>
            <tr>
                <td rowspan="3">Płyty główne </td>
                <td>
                    <strong>MSI B360M PRO-VDH</strong> -
                    <p class="best_price">329,00 </p>zł
                </td>
            </tr>
            <tr>
                <td>ASRock Z370 Pro4 - 439,00 zł</td>
            </tr>
            <tr>
                <td>MSI Z370 TOMAHAWK - 615,00 zł</td>
            </tr>
        </table>

        <aside class="survey">
            <h2>Ankieta</h2>
            <label>Czy poleciłbyś nasz sklep swoim znajomym?</label>
            <p>Tak
                <input name="survey" type="radio" value="tak" checked/>
            </p>
            <p>Nie
                <input name="survey" type="radio" value="nie"/>
            </p>
            <input id="submit_survey_button" type="submit" value="Głosuj" onclick="submitButtonClicked()"/>


        </aside>
    </section>
    <table class="discount_table_index">
        <caption>
            <em>Zestawy komputerowe ~3000 zł</em>
        </caption>
        <thead>
            <tr>
                <th>
                    <strong>Nazwa komponentu</strong>
                </th>
                <th colspan="2">Komputery dla graczy</th>
                <th>Komputery biurowe</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Procesor</td>
                <td>Intel i3-8100 3.60GHz 6MB BOX</td>
                <td>Intel I3 8100</td>
                <td>AMD Ryzen 5 1600 /3.6GHz, AM4, BOX/</td>
            </tr>
            <tr>
                <td>Płyta główna</td>
                <td>MSI B360M PRO-VDH</td>
                <td>MSI B360M PRO VDH</td>
                <td>MSI B350M PRO-VDH /AMD B350, DDR4, AM4/</td>
            </tr>
            <tr>
                <td>Pamięć RAM</td>
                <td>Patriot 8GB 2666MHz Viper Elite Gray CL16</td>
                <td>Crucial 2x4 GB 2400 MHz CL16</td>
                <td>A-Data 16GB (2x8GB) 3000MHz CL16 XPG Z1</td>
            </tr>
            <tr>
                <td>Karta graficzna</td>
                <td>Inno3D GeForce GTX 1060 X2 6GB GDDR5</td>
                <td>Gigabyte GTX 1060 6 GB WF2</td>
                <td>Asus GeForce GT1030 2GB DDR5 64bit (1468/6000)</td>
            </tr>
            <tr>
                <td>Dysk HDD</td>
                <td>Toshiba 1TB 7200obr. 64MB P300 OEM</td>
                <td>Toshiba P300 1 TB 7200 RPM SATA 600</td>
                <td>GoodRam Iridium PRO 240GB SATA3 (560/530MB/s) MLC</td>
            </tr>
            <tr>
                <td>Obudowa</td>
                <td>SilentiumPC Regnum RG4T Pure Black</td>
                <td>SPC Regnum RG4</td>
                <td>Zalman R1 black USB3.0 (b/z)</td>
            </tr>
            <tr>
                <td>Zasilacz</td>
                <td>SilentiumPC 500W Vero L2 Bronze</td>
                <td>SPC Vero L2 500W</td>
                <td>XFX Core TS 450W 120mm Bronze</td>
            </tr>
            <tr>
                <td>
                    <strong>Cena</strong>
                </td>
                <th>
                    <strong>2900 zł</strong>
                </th>
                <th>
                    <strong>3099 zł</strong>
                </th>
                <th>
                    <strong>3200 zł</strong>
                </th>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td>Ocena redakcji</td>
                <th>
                    <table class="discount_table_index cover_whole_area_table_index">
                        <thead>
                            <tr>
                                <th>Ralph</th>
                                <th>Steven</th>
                                <th>Mike</th>
                                <th>John</th>
                                <th>George</th>
                                <th>Sven</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>7/10</td>
                                <td>8/10</td>
                                <td>6/10</td>
                                <td>8/10</td>
                                <td>6/10</td>
                                <td>7/10</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="6">7/10</th>
                            </tr>
                        </tfoot>
                    </table>
                </th>
                <th>
                    <table class="discount_table_index cover_whole_area_table_index">
                        <thead>
                            <tr>
                                <th>Ralph</th>
                                <th>Steven</th>
                                <th>Mike</th>
                                <th>John</th>
                                <th>George</th>
                                <th>Sven</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>8/10</td>
                                <td>8/10</td>
                                <td>6/10</td>
                                <td>7/10</td>
                                <td>7/10</td>
                                <td>8/10</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="6">7,3/10</th>
                            </tr>
                        </tfoot>
                    </table>
                </th>
                <th>
                    <table class="discount_table_index cover_whole_area_table_index">
                        <thead>
                            <tr>
                                <th>Ralph</th>
                                <th>Steven</th>
                                <th>Mike</th>
                                <th>John</th>
                                <th>George</th>
                                <th>Sven</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>7/10</td>
                                <td>9/10</td>
                                <td>9/10</td>
                                <td>8/10</td>
                                <td>10/10</td>
                                <td>7/10</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="6">8,3/10</th>
                            </tr>
                        </tfoot>
                    </table>
                </th>
            </tr>
        </tfoot>
    </table>
    <br>

    <div id="opinions">
        <h1>Opinie klientów:</h1>
        <p id="random_opinions"></p>
    </div>
    <section>
        <section>Kliknij
            <a href="images/kot.jpg" download id="important_cat_link">tutaj</a> żeby pobrać zdjęcie naszego kota!
        </section>
        <section>
            <a href="fr2.rpmfind.net/linux/fedora/linux/development/rawhide/Everything/aarch64/os/Packages/f/ftp-0.17-78.fc29.aarch64.rpm"
                download>FTP</a>
        </section>
        <section> Najnowsze informacje z branży informatycznej
            <a href="https://www.pcworld.pl/">https://www.pcworld.pl/</a>
        </section>
    </section>
    




</asp:Content>
    
    